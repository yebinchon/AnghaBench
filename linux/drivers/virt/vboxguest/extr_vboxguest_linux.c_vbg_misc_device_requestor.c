
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_gid; } ;
struct TYPE_4__ {TYPE_1__* cred; } ;
struct TYPE_3__ {int uid; } ;


 int VMMDEV_REQUESTOR_CON_DONT_KNOW ;
 int VMMDEV_REQUESTOR_GRP_VBOX ;
 int VMMDEV_REQUESTOR_TRUST_NOT_GIVEN ;
 int VMMDEV_REQUESTOR_USERMODE ;
 int VMMDEV_REQUESTOR_USR_ROOT ;
 int VMMDEV_REQUESTOR_USR_USER ;
 TYPE_2__* current ;
 int current_user_ns () ;
 scalar_t__ from_kuid (int ,int ) ;
 scalar_t__ in_egroup_p (int ) ;

__attribute__((used)) static u32 vbg_misc_device_requestor(struct inode *inode)
{
 u32 requestor = VMMDEV_REQUESTOR_USERMODE |
   VMMDEV_REQUESTOR_CON_DONT_KNOW |
   VMMDEV_REQUESTOR_TRUST_NOT_GIVEN;

 if (from_kuid(current_user_ns(), current->cred->uid) == 0)
  requestor |= VMMDEV_REQUESTOR_USR_ROOT;
 else
  requestor |= VMMDEV_REQUESTOR_USR_USER;

 if (in_egroup_p(inode->i_gid))
  requestor |= VMMDEV_REQUESTOR_GRP_VBOX;

 return requestor;
}
