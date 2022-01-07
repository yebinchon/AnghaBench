
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header_basic {scalar_t__ direction; scalar_t__ ep; scalar_t__ devid; void* seqnum; void* command; } ;
typedef void* __u32 ;



__attribute__((used)) static inline void setup_base_pdu(struct usbip_header_basic *base,
      __u32 command, __u32 seqnum)
{
 base->command = command;
 base->seqnum = seqnum;
 base->devid = 0;
 base->ep = 0;
 base->direction = 0;
}
