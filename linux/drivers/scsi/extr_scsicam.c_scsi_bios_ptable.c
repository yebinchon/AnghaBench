
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {struct block_device* bd_contains; } ;
typedef int Sector ;


 int GFP_KERNEL ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,void*,int) ;
 int put_dev_sector (int ) ;
 void* read_dev_sector (struct block_device*,int ,int *) ;

unsigned char *scsi_bios_ptable(struct block_device *dev)
{
 unsigned char *res = kmalloc(66, GFP_KERNEL);
 if (res) {
  struct block_device *bdev = dev->bd_contains;
  Sector sect;
  void *data = read_dev_sector(bdev, 0, &sect);
  if (data) {
   memcpy(res, data + 0x1be, 66);
   put_dev_sector(sect);
  } else {
   kfree(res);
   res = ((void*)0);
  }
 }
 return res;
}
