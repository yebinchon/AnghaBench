
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int num_sgs; int * sg; int transfer_buffer; } ;


 int DUMP_PREFIX_NONE ;
 int KERN_DEBUG ;
 unsigned int USB_SG_SIZE ;
 unsigned int min (unsigned int,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int,int) ;
 int sg_virt (int *) ;
 int usbfs_snoop ;
 int usbfs_snoop_max ;

__attribute__((used)) static void snoop_urb_data(struct urb *urb, unsigned len)
{
 int i, size;

 len = min(len, usbfs_snoop_max);
 if (!usbfs_snoop || len == 0)
  return;

 if (urb->num_sgs == 0) {
  print_hex_dump(KERN_DEBUG, "data: ", DUMP_PREFIX_NONE, 32, 1,
   urb->transfer_buffer, len, 1);
  return;
 }

 for (i = 0; i < urb->num_sgs && len; i++) {
  size = (len > USB_SG_SIZE) ? USB_SG_SIZE : len;
  print_hex_dump(KERN_DEBUG, "data: ", DUMP_PREFIX_NONE, 32, 1,
   sg_virt(&urb->sg[i]), size, 1);
  len -= size;
 }
}
