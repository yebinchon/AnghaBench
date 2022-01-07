
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qla_hw_data {scalar_t__ beacon_color_state; } ;


 int GPIO_LED_ALL_OFF ;
 int GPIO_LED_GREEN_OFF_AMBER_OFF ;
 int GPIO_LED_GREEN_ON_AMBER_OFF ;
 int GPIO_LED_RGA_ON ;
 scalar_t__ IS_QLA2322 (struct qla_hw_data*) ;
 scalar_t__ QLA_LED_ALL_ON ;
 scalar_t__ QLA_LED_GRN_ON ;

__attribute__((used)) static inline void
qla2x00_flip_colors(struct qla_hw_data *ha, uint16_t *pflags)
{
 if (IS_QLA2322(ha)) {

  if (ha->beacon_color_state == QLA_LED_ALL_ON) {

   ha->beacon_color_state = 0;
   *pflags = GPIO_LED_ALL_OFF;
  } else {

   ha->beacon_color_state = QLA_LED_ALL_ON;
   *pflags = GPIO_LED_RGA_ON;
  }
 } else {

  if (ha->beacon_color_state == QLA_LED_GRN_ON) {

   ha->beacon_color_state = 0;
   *pflags = GPIO_LED_GREEN_OFF_AMBER_OFF;
  } else {

   ha->beacon_color_state = QLA_LED_GRN_ON;
   *pflags = GPIO_LED_GREEN_ON_AMBER_OFF;
  }
 }
}
