
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {scalar_t__ msgram; } ;


 scalar_t__ QMP_DESC_MCORE_CH_STATE_ACK ;
 scalar_t__ QMP_STATE_UP ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static bool qmp_mcore_channel_acked(struct qmp *qmp)
{
 return readl(qmp->msgram + QMP_DESC_MCORE_CH_STATE_ACK) == QMP_STATE_UP;
}
