
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int caps; } ;


 int UFS_QCOM_CAP_QUNIPRO ;

__attribute__((used)) static inline bool ufs_qcom_cap_qunipro(struct ufs_qcom_host *host)
{
 if (host->caps & UFS_QCOM_CAP_QUNIPRO)
  return 1;
 else
  return 0;
}
