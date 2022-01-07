
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qoriq_tmu_data {TYPE_1__* regs; } ;
struct TYPE_2__ {int tmr; int tmtmir; int tier; } ;


 int TIER_DISABLE ;
 int TMR_DISABLE ;
 int TMTMIR_DEFAULT ;
 int tmu_write (struct qoriq_tmu_data*,int ,int *) ;

__attribute__((used)) static void qoriq_tmu_init_device(struct qoriq_tmu_data *data)
{

 tmu_write(data, TIER_DISABLE, &data->regs->tier);


 tmu_write(data, TMTMIR_DEFAULT, &data->regs->tmtmir);


 tmu_write(data, TMR_DISABLE, &data->regs->tmr);
}
