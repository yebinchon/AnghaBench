
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int SETUP_FB (struct stifb_info*) ;
 int SETUP_RAMDAC (struct stifb_info*) ;

__attribute__((used)) static void
elkSetupPlanes(struct stifb_info *fb)
{
 SETUP_RAMDAC(fb);
 SETUP_FB(fb);
}
