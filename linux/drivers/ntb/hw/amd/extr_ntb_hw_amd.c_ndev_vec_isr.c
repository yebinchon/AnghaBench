
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_vec {int num; int ndev; } ;
typedef int irqreturn_t ;


 int ndev_interrupt (int ,int ) ;

__attribute__((used)) static irqreturn_t ndev_vec_isr(int irq, void *dev)
{
 struct amd_ntb_vec *nvec = dev;

 return ndev_interrupt(nvec->ndev, nvec->num);
}
