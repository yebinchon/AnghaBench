
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_2__ {int mutex; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ tm_cmds; } ;


 int mpt3sas_scsih_issue_tm (struct MPT3SAS_ADAPTER*,int ,int ,int ,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mpt3sas_scsih_issue_locked_tm(struct MPT3SAS_ADAPTER *ioc, u16 handle,
  u64 lun, u8 type, u16 smid_task, u16 msix_task,
  u8 timeout, u8 tr_method)
{
 int ret;

 mutex_lock(&ioc->tm_cmds.mutex);
 ret = mpt3sas_scsih_issue_tm(ioc, handle, lun, type, smid_task,
   msix_task, timeout, tr_method);
 mutex_unlock(&ioc->tm_cmds.mutex);

 return ret;
}
