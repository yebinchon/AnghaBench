
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps6507x_pmic {TYPE_1__* mfd; } ;
struct TYPE_2__ {int (* write_dev ) (TYPE_1__*,int ,int,int *) ;} ;


 int stub1 (TYPE_1__*,int ,int,int *) ;

__attribute__((used)) static inline int tps6507x_pmic_write(struct tps6507x_pmic *tps, u8 reg, u8 val)
{
 return tps->mfd->write_dev(tps->mfd, reg, 1, &val);
}
