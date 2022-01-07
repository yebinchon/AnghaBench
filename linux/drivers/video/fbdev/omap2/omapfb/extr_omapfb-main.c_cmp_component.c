
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_bitfield {scalar_t__ length; scalar_t__ offset; scalar_t__ msb_right; } ;



__attribute__((used)) static bool cmp_component(struct fb_bitfield *f1, struct fb_bitfield *f2)
{
 return f1->length == f2->length &&
  f1->offset == f2->offset &&
  f1->msb_right == f2->msb_right;
}
