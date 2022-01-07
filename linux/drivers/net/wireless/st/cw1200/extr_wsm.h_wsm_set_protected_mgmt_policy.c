
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct wsm_protected_mgmt_policy {scalar_t__ encryptionForAuthFrame; scalar_t__ unprotectedMgmtFramesAllowed; scalar_t__ protectedMgmtEnable; } ;
struct cw1200_common {int dummy; } ;
typedef int __le32 ;


 int BIT (int) ;
 int WSM_MIB_ID_PROTECTED_MGMT_POLICY ;
 int __cpu_to_le32 (int ) ;
 int wsm_write_mib (struct cw1200_common*,int ,int *,int) ;

__attribute__((used)) static inline int wsm_set_protected_mgmt_policy(struct cw1200_common *priv,
  struct wsm_protected_mgmt_policy *arg)
{
 __le32 val = 0;
 int ret;
 if (arg->protectedMgmtEnable)
  val |= __cpu_to_le32(BIT(0));
 if (arg->unprotectedMgmtFramesAllowed)
  val |= __cpu_to_le32(BIT(1));
 if (arg->encryptionForAuthFrame)
  val |= __cpu_to_le32(BIT(2));
 ret = wsm_write_mib(priv, WSM_MIB_ID_PROTECTED_MGMT_POLICY,
   &val, sizeof(val));
 return ret;
}
