
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pm8001_ioctl_payload {int minor_function; int length; int func_specific; scalar_t__ offset; } ;
struct pm8001_hba_info {int * nvmd_completion; } ;
struct TYPE_2__ {int (* get_nvmd_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int completion ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int pm8001_printk (char*) ;
 int pm8001_set_phy_profile (struct pm8001_hba_info*,int,int ) ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int pm8001_get_phy_settings_info(struct pm8001_hba_info *pm8001_ha)
{
 return 0;
}
