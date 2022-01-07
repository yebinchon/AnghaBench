
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;


 int HD64461_STBCR ;
 int HD64461_STBCR_SLCKE_IST ;
 int fb_readw (int ) ;
 int fb_writew (int ,int ) ;
 int hitfb_blank (int,int ) ;

__attribute__((used)) static int hitfb_suspend(struct device *dev)
{
 u16 v;

 hitfb_blank(1,0);
 v = fb_readw(HD64461_STBCR);
 v |= HD64461_STBCR_SLCKE_IST;
 fb_writew(v, HD64461_STBCR);

 return 0;
}
