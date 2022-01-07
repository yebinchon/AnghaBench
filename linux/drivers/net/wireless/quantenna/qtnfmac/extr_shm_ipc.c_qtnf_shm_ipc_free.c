
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_shm_ipc {int tx_completion; } ;


 int complete_all (int *) ;

void qtnf_shm_ipc_free(struct qtnf_shm_ipc *ipc)
{
 complete_all(&ipc->tx_completion);
}
