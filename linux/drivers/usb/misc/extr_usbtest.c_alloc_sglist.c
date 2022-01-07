
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbtest_dev {int intf; } ;
struct scatterlist {int dummy; } ;


 int GFP_KERNEL ;
 int free_sglist (struct scatterlist*,unsigned int) ;
 unsigned int get_maxpacket (int ,int) ;
 int interface_to_usbdev (int ) ;
 struct scatterlist* kmalloc_array (int,int,int ) ;
 char* kzalloc (unsigned int,int ) ;
 int pattern ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,char*,unsigned int) ;

__attribute__((used)) static struct scatterlist *
alloc_sglist(int nents, int max, int vary, struct usbtest_dev *dev, int pipe)
{
 struct scatterlist *sg;
 unsigned int n_size = 0;
 unsigned i;
 unsigned size = max;
 unsigned maxpacket =
  get_maxpacket(interface_to_usbdev(dev->intf), pipe);

 if (max == 0)
  return ((void*)0);

 sg = kmalloc_array(nents, sizeof(*sg), GFP_KERNEL);
 if (!sg)
  return ((void*)0);
 sg_init_table(sg, nents);

 for (i = 0; i < nents; i++) {
  char *buf;
  unsigned j;

  buf = kzalloc(size, GFP_KERNEL);
  if (!buf) {
   free_sglist(sg, i);
   return ((void*)0);
  }


  sg_set_buf(&sg[i], buf, size);

  switch (pattern) {
  case 0:

   break;
  case 1:
   for (j = 0; j < size; j++)
    *buf++ = (u8) (((j + n_size) % maxpacket) % 63);
   n_size += size;
   break;
  }

  if (vary) {
   size += vary;
   size %= max;
   if (size == 0)
    size = (vary < max) ? vary : max;
  }
 }

 return sg;
}
