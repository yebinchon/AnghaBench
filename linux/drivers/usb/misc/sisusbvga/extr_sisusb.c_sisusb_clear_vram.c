
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sisusb_usb_data {scalar_t__ vrambase; scalar_t__ vramsize; int obufsize; int * obuf; } ;
typedef int ssize_t ;


 int EBUSY ;
 int memset (int ,int ,int ) ;
 int sisusb_alloc_outbuf (struct sisusb_usb_data*) ;
 int sisusb_free_outbuf (struct sisusb_usb_data*,int) ;
 int sisusb_write_mem_bulk (struct sisusb_usb_data*,scalar_t__,int *,int,int *,int,int *) ;

__attribute__((used)) static int sisusb_clear_vram(struct sisusb_usb_data *sisusb,
  u32 address, int length)
{
 int ret, i;
 ssize_t j;

 if (address < sisusb->vrambase)
  return 1;

 if (address >= sisusb->vrambase + sisusb->vramsize)
  return 1;

 if (address + length > sisusb->vrambase + sisusb->vramsize)
  length = sisusb->vrambase + sisusb->vramsize - address;

 if (length <= 0)
  return 0;


 i = sisusb_alloc_outbuf(sisusb);
 if (i < 0)
  return -EBUSY;

 memset(sisusb->obuf[i], 0, sisusb->obufsize);




 ret = sisusb_write_mem_bulk(sisusb, address, ((void*)0), length, ((void*)0), i, &j);


 sisusb_free_outbuf(sisusb, i);

 return ret;
}
