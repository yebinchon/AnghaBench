
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qoriq_tmu_data {TYPE_2__* regs; } ;
struct qoriq_sensor {size_t id; struct qoriq_tmu_data* qdata; } ;
struct TYPE_4__ {TYPE_1__* site; } ;
struct TYPE_3__ {int tritsr; } ;


 int tmu_read (struct qoriq_tmu_data*,int *) ;

__attribute__((used)) static int tmu_get_temp(void *p, int *temp)
{
 struct qoriq_sensor *qsensor = p;
 struct qoriq_tmu_data *qdata = qsensor->qdata;
 u32 val;

 val = tmu_read(qdata, &qdata->regs->site[qsensor->id].tritsr);
 *temp = (val & 0xff) * 1000;

 return 0;
}
