
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;


 int HD64461_STBCR ;
 int HD64461_STBCR_SLCKE_IST ;
 int HD64461_STBCR_SLCKE_OST ;
 int fb_readw (int ) ;
 int fb_writew (int ,int ) ;
 int hitfb_blank (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int hitfb_resume(struct device *dev)
{
 u16 v;

 v = fb_readw(HD64461_STBCR);
 v &= ~HD64461_STBCR_SLCKE_OST;
 msleep(100);
 v = fb_readw(HD64461_STBCR);
 v &= ~HD64461_STBCR_SLCKE_IST;
 fb_writew(v, HD64461_STBCR);
 hitfb_blank(0,0);

 return 0;
}
