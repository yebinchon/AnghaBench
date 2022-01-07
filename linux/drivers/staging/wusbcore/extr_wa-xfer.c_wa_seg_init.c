
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_seg {int tr_urb; } ;


 int memset (void*,int ,int) ;
 int usb_init_urb (int *) ;

__attribute__((used)) static inline void wa_seg_init(struct wa_seg *seg)
{
 usb_init_urb(&seg->tr_urb);


 memset(((void *)seg) + sizeof(seg->tr_urb), 0,
  sizeof(*seg) - sizeof(seg->tr_urb));
}
