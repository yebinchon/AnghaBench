
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_param {int value; } ;
struct iscsi_conn {int param_list; struct cxgbit_sock* context; } ;
struct TYPE_2__ {struct cxgbit_device* cdev; } ;
struct cxgbit_sock {TYPE_1__ com; } ;
struct cxgbit_device {scalar_t__ mdsl; } ;


 int MAXXMITDATASEGMENTLENGTH ;
 scalar_t__ iscsi_change_param_sprintf (struct iscsi_conn*,char*,scalar_t__) ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 scalar_t__ kstrtou32 (int ,int ,scalar_t__*) ;

int cxgbit_validate_params(struct iscsi_conn *conn)
{
 struct cxgbit_sock *csk = conn->context;
 struct cxgbit_device *cdev = csk->com.cdev;
 struct iscsi_param *param;
 u32 max_xmitdsl;

 param = iscsi_find_param_from_key(MAXXMITDATASEGMENTLENGTH,
       conn->param_list);
 if (!param)
  return -1;

 if (kstrtou32(param->value, 0, &max_xmitdsl) < 0)
  return -1;

 if (max_xmitdsl > cdev->mdsl) {
  if (iscsi_change_param_sprintf(
   conn, "MaxXmitDataSegmentLength=%u", cdev->mdsl))
   return -1;
 }

 return 0;
}
