
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ucsi_ccg {int fw_version; int info; TYPE_2__* version; } ;
struct TYPE_3__ {int patch; int ver; } ;
struct TYPE_4__ {TYPE_1__ app; } ;


 int CCGX_RAB_DEVICE_MODE ;
 int CCGX_RAB_READ_ALL_VER ;
 int CCG_VERSION (int ) ;
 int CCG_VERSION_PATCH (int ) ;
 size_t FW2 ;
 int ccg_read (struct ucsi_ccg*,int ,int *,int) ;

__attribute__((used)) static int get_fw_info(struct ucsi_ccg *uc)
{
 int err;

 err = ccg_read(uc, CCGX_RAB_READ_ALL_VER, (u8 *)(&uc->version),
         sizeof(uc->version));
 if (err < 0)
  return err;

 uc->fw_version = CCG_VERSION(uc->version[FW2].app.ver) |
   CCG_VERSION_PATCH(uc->version[FW2].app.patch);

 err = ccg_read(uc, CCGX_RAB_DEVICE_MODE, (u8 *)(&uc->info),
         sizeof(uc->info));
 if (err < 0)
  return err;

 return 0;
}
