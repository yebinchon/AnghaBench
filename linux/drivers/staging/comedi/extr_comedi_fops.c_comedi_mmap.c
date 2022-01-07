
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; unsigned long vm_end; TYPE_1__* vm_ops; struct comedi_buf_map* vm_private_data; } ;
struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int attach_lock; int class_dev; int attached; } ;
struct comedi_buf_page {int virt_addr; int dma_addr; } ;
struct comedi_buf_map {int n_pages; scalar_t__ dma_dir; struct comedi_buf_page* page_list; int dma_hw_dev; } ;
struct comedi_async {unsigned long prealloc_bufsz; } ;
struct TYPE_2__ {int (* open ) (struct vm_area_struct*) ;} ;


 scalar_t__ DMA_NONE ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int PAGE_SHARED ;
 int PAGE_SIZE ;
 int VM_WRITE ;
 struct comedi_buf_map* comedi_buf_map_from_subdev_get (struct comedi_subdevice*) ;
 int comedi_buf_map_put (struct comedi_buf_map*) ;
 struct comedi_subdevice* comedi_file_read_subdevice (struct file*) ;
 struct comedi_subdevice* comedi_file_write_subdevice (struct file*) ;
 TYPE_1__ comedi_vm_ops ;
 int dev_dbg (int ,char*) ;
 int dma_mmap_coherent (int ,struct vm_area_struct*,int ,int ,int) ;
 int down_read_trylock (int *) ;
 scalar_t__ offset_in_page (unsigned long) ;
 unsigned long page_to_pfn (int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 int stub1 (struct vm_area_struct*) ;
 int up_read (int *) ;
 int virt_to_page (int ) ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;
 struct comedi_subdevice *s;
 struct comedi_async *async;
 struct comedi_buf_map *bm = ((void*)0);
 struct comedi_buf_page *buf;
 unsigned long start = vma->vm_start;
 unsigned long size;
 int n_pages;
 int i;
 int retval = 0;







 if (!down_read_trylock(&dev->attach_lock))
  return -EAGAIN;

 if (!dev->attached) {
  dev_dbg(dev->class_dev, "no driver attached\n");
  retval = -ENODEV;
  goto done;
 }

 if (vma->vm_flags & VM_WRITE)
  s = comedi_file_write_subdevice(file);
 else
  s = comedi_file_read_subdevice(file);
 if (!s) {
  retval = -EINVAL;
  goto done;
 }

 async = s->async;
 if (!async) {
  retval = -EINVAL;
  goto done;
 }

 if (vma->vm_pgoff != 0) {
  dev_dbg(dev->class_dev, "mmap() offset must be 0.\n");
  retval = -EINVAL;
  goto done;
 }

 size = vma->vm_end - vma->vm_start;
 if (size > async->prealloc_bufsz) {
  retval = -EFAULT;
  goto done;
 }
 if (offset_in_page(size)) {
  retval = -EFAULT;
  goto done;
 }

 n_pages = vma_pages(vma);


 bm = comedi_buf_map_from_subdev_get(s);
 if (!bm || n_pages > bm->n_pages) {
  retval = -EINVAL;
  goto done;
 }
 if (bm->dma_dir != DMA_NONE) {




  buf = &bm->page_list[0];
  retval = dma_mmap_coherent(bm->dma_hw_dev, vma, buf->virt_addr,
        buf->dma_addr, n_pages * PAGE_SIZE);
 } else {
  for (i = 0; i < n_pages; ++i) {
   unsigned long pfn;

   buf = &bm->page_list[i];
   pfn = page_to_pfn(virt_to_page(buf->virt_addr));
   retval = remap_pfn_range(vma, start, pfn, PAGE_SIZE,
       PAGE_SHARED);
   if (retval)
    break;

   start += PAGE_SIZE;
  }
 }

 if (retval == 0) {
  vma->vm_ops = &comedi_vm_ops;
  vma->vm_private_data = bm;

  vma->vm_ops->open(vma);
 }

done:
 up_read(&dev->attach_lock);
 comedi_buf_map_put(bm);
 return retval;
}
