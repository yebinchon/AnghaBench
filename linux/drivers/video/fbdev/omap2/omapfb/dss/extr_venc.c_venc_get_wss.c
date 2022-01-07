
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int wss_data; } ;


 TYPE_1__ venc ;

__attribute__((used)) static u32 venc_get_wss(struct omap_dss_device *dssdev)
{

 return (venc.wss_data >> 8) ^ 0xfffff;
}
