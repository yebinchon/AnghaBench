
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vrfb {unsigned int yoffset; unsigned int xoffset; unsigned int bytespp; } ;
struct omapfb_info {TYPE_1__* region; } ;
struct TYPE_2__ {struct vrfb vrfb; } ;


 int BUG () ;




 unsigned int OMAP_VRFB_LINE_LEN ;

__attribute__((used)) static unsigned omapfb_get_vrfb_offset(const struct omapfb_info *ofbi, int rot)
{
 const struct vrfb *vrfb = &ofbi->region->vrfb;
 unsigned offset;

 switch (rot) {
 case 128:
  offset = 0;
  break;
 case 130:
  offset = vrfb->yoffset;
  break;
 case 129:
  offset = vrfb->yoffset * OMAP_VRFB_LINE_LEN + vrfb->xoffset;
  break;
 case 131:
  offset = vrfb->xoffset * OMAP_VRFB_LINE_LEN;
  break;
 default:
  BUG();
  return 0;
 }

 offset *= vrfb->bytespp;

 return offset;
}
