
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_t {int head; scalar_t__ cyl; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;



__attribute__((used)) static void set_ch_t(struct ch_t *geo, __u32 cyl, __u8 head)
{
 geo->cyl = (__u16) cyl;
 geo->head = cyl >> 16;
 geo->head <<= 4;
 geo->head |= head;
}
