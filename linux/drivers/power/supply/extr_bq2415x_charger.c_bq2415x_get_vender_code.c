
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_VENDER_CODE ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;

__attribute__((used)) static int bq2415x_get_vender_code(struct bq2415x_device *bq)
{
 int ret;

 ret = bq2415x_exec_command(bq, BQ2415X_VENDER_CODE);
 if (ret < 0)
  return 0;


 return (ret & 0x1) +
        ((ret >> 1) & 0x1) * 10 +
        ((ret >> 2) & 0x1) * 100;
}
