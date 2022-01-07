
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_wr_wait {int completion; scalar_t__ ret; } ;


 int reinit_completion (int *) ;

__attribute__((used)) static void cxgbit_init_wr_wait(struct cxgbit_wr_wait *wr_waitp)
{
 wr_waitp->ret = 0;
 reinit_completion(&wr_waitp->completion);
}
