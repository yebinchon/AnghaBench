
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {scalar_t__ port_no; } ;


 int IS_QLA27XX (struct qla_hw_data*) ;
 int IS_QLA28XX (struct qla_hw_data*) ;
 int IS_QLA83XX (struct qla_hw_data*) ;
 int QLA83XX_LED_PORT0 ;
 int QLA83XX_LED_PORT1 ;

__attribute__((used)) static uint32_t
qla83xx_select_led_port(struct qla_hw_data *ha)
{
 uint32_t led_select_value = 0;

 if (!IS_QLA83XX(ha) && !IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  goto out;

 if (ha->port_no == 0)
  led_select_value = QLA83XX_LED_PORT0;
 else
  led_select_value = QLA83XX_LED_PORT1;

out:
 return led_select_value;
}
