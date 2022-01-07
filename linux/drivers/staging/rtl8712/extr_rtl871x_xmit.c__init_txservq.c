
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_servq {scalar_t__ qcnt; int sta_pending; int tx_pending; } ;


 int INIT_LIST_HEAD (int *) ;
 int _init_queue (int *) ;

__attribute__((used)) static void _init_txservq(struct tx_servq *ptxservq)
{
 INIT_LIST_HEAD(&ptxservq->tx_pending);
 _init_queue(&ptxservq->sta_pending);
 ptxservq->qcnt = 0;
}
