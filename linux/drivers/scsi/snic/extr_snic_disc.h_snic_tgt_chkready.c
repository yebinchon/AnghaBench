
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_tgt {scalar_t__ state; } ;


 int DID_NO_CONNECT ;
 scalar_t__ SNIC_TGT_STAT_ONLINE ;

__attribute__((used)) static inline int
snic_tgt_chkready(struct snic_tgt *tgt)
{
 if (tgt->state == SNIC_TGT_STAT_ONLINE)
  return 0;
 else
  return DID_NO_CONNECT << 16;
}
