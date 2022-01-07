
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gb_svc {int dummy; } ;
struct gb_camera {TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* hd; } ;
struct TYPE_3__ {struct gb_svc* svc; } ;


 int GB_SVC_NO_DE_EMPHASIS ;
 int GB_SVC_PWRM_RXTERMINATION ;
 int GB_SVC_PWRM_TXTERMINATION ;
 int GB_SVC_SMALL_AMPLITUDE ;
 int GB_SVC_UNIPRO_FAST_MODE ;
 int GB_SVC_UNIPRO_HS_SERIES_A ;
 int GB_SVC_UNIPRO_SLOW_AUTO_MODE ;
 int gb_svc_intf_set_power_mode (struct gb_svc*,int ,int ,int ,int,int,int ,int ,int ,int,int,int,int ,int *,int *) ;

__attribute__((used)) static int gb_camera_set_intf_power_mode(struct gb_camera *gcam, u8 intf_id,
      bool hs)
{
 struct gb_svc *svc = gcam->connection->hd->svc;
 int ret;

 if (hs)
  ret = gb_svc_intf_set_power_mode(svc, intf_id,
       GB_SVC_UNIPRO_HS_SERIES_A,
       GB_SVC_UNIPRO_FAST_MODE, 2, 2,
       GB_SVC_SMALL_AMPLITUDE,
       GB_SVC_NO_DE_EMPHASIS,
       GB_SVC_UNIPRO_FAST_MODE, 2, 2,
       GB_SVC_PWRM_RXTERMINATION |
       GB_SVC_PWRM_TXTERMINATION, 0,
       ((void*)0), ((void*)0));
 else
  ret = gb_svc_intf_set_power_mode(svc, intf_id,
       GB_SVC_UNIPRO_HS_SERIES_A,
       GB_SVC_UNIPRO_SLOW_AUTO_MODE,
       2, 1,
       GB_SVC_SMALL_AMPLITUDE,
       GB_SVC_NO_DE_EMPHASIS,
       GB_SVC_UNIPRO_SLOW_AUTO_MODE,
       2, 1,
       0, 0,
       ((void*)0), ((void*)0));

 return ret;
}
