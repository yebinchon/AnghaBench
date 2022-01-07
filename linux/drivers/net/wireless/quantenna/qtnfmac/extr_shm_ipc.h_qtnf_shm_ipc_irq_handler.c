
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_shm_ipc {int (* irq_handler ) (struct qtnf_shm_ipc*) ;} ;


 int stub1 (struct qtnf_shm_ipc*) ;

__attribute__((used)) static inline void qtnf_shm_ipc_irq_handler(struct qtnf_shm_ipc *ipc)
{
 ipc->irq_handler(ipc);
}
