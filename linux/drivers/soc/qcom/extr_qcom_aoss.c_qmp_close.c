
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {scalar_t__ msgram; } ;


 scalar_t__ QMP_DESC_MCORE_CH_STATE ;
 scalar_t__ QMP_DESC_MCORE_LINK_STATE ;
 int QMP_STATE_DOWN ;
 int qmp_kick (struct qmp*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qmp_close(struct qmp *qmp)
{
 writel(QMP_STATE_DOWN, qmp->msgram + QMP_DESC_MCORE_CH_STATE);
 writel(QMP_STATE_DOWN, qmp->msgram + QMP_DESC_MCORE_LINK_STATE);
 qmp_kick(qmp);
}
