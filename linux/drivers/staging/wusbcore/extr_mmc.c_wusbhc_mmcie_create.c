
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mmcie_mutex; int * mmcie; int mmcies_max; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int ,int,int ) ;
 int mutex_init (int *) ;

int wusbhc_mmcie_create(struct wusbhc *wusbhc)
{
 u8 mmcies = wusbhc->mmcies_max;
 wusbhc->mmcie = kcalloc(mmcies, sizeof(wusbhc->mmcie[0]), GFP_KERNEL);
 if (wusbhc->mmcie == ((void*)0))
  return -ENOMEM;
 mutex_init(&wusbhc->mmcie_mutex);
 return 0;
}
