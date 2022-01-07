
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {unsigned int actual_length; unsigned int offset; } ;
struct urb {struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct mon_reader_bin {int dummy; } ;



__attribute__((used)) static unsigned int mon_bin_collate_isodesc(const struct mon_reader_bin *rp,
    struct urb *urb, unsigned int ndesc)
{
 struct usb_iso_packet_descriptor *fp;
 unsigned int length;

 length = 0;
 fp = urb->iso_frame_desc;
 while (ndesc-- != 0) {
  if (fp->actual_length != 0) {
   if (fp->offset + fp->actual_length > length)
    length = fp->offset + fp->actual_length;
  }
  fp++;
 }
 return length;
}
