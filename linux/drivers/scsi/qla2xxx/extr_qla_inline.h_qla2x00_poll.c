
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsp_que {struct qla_hw_data* hw; } ;
struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int (* intr_handler ) (int ,struct rsp_que*) ;} ;


 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 int qla82xx_poll (int ,struct rsp_que*) ;
 int stub1 (int ,struct rsp_que*) ;

__attribute__((used)) static inline void
qla2x00_poll(struct rsp_que *rsp)
{
 struct qla_hw_data *ha = rsp->hw;

 if (IS_P3P_TYPE(ha))
  qla82xx_poll(0, rsp);
 else
  ha->isp_ops->intr_handler(0, rsp);
}
