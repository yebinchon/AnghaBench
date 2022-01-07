
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_iso_packet_descriptor {int dummy; } ;
struct urb {int number_of_packets; int * iso_frame_desc; } ;
typedef int ssize_t ;


 int GFP_KERNEL ;
 struct usbip_iso_packet_descriptor* kzalloc (int,int ) ;
 int usbip_iso_packet_correct_endian (struct usbip_iso_packet_descriptor*,int) ;
 int usbip_pack_iso (struct usbip_iso_packet_descriptor*,int *,int) ;

struct usbip_iso_packet_descriptor*
usbip_alloc_iso_desc_pdu(struct urb *urb, ssize_t *bufflen)
{
 struct usbip_iso_packet_descriptor *iso;
 int np = urb->number_of_packets;
 ssize_t size = np * sizeof(*iso);
 int i;

 iso = kzalloc(size, GFP_KERNEL);
 if (!iso)
  return ((void*)0);

 for (i = 0; i < np; i++) {
  usbip_pack_iso(&iso[i], &urb->iso_frame_desc[i], 1);
  usbip_iso_packet_correct_endian(&iso[i], 1);
 }

 *bufflen = size;

 return iso;
}
