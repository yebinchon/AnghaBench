
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla27xx_fwdt_template {int capture_timestamp; } ;


 int jiffies ;

__attribute__((used)) static void
qla27xx_time_stamp(struct qla27xx_fwdt_template *tmp)
{
 tmp->capture_timestamp = jiffies;
}
