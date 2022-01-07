
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {unsigned int transfer_buffer_length; int pipe; int dev; int * transfer_buffer; } ;


 unsigned int get_maxpacket (int ,int ) ;
 int memset (int *,int ,unsigned int) ;
 int pattern ;

__attribute__((used)) static void simple_fill_buf(struct urb *urb)
{
 unsigned i;
 u8 *buf = urb->transfer_buffer;
 unsigned len = urb->transfer_buffer_length;
 unsigned maxpacket;

 switch (pattern) {
 default:

 case 0:
  memset(buf, 0, len);
  break;
 case 1:
  maxpacket = get_maxpacket(urb->dev, urb->pipe);
  for (i = 0; i < len; i++)
   *buf++ = (u8) ((i % maxpacket) % 63);
  break;
 }
}
