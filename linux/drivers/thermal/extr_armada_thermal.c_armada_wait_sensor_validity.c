
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct armada_thermal_priv {TYPE_1__* data; int syscon; } ;
struct TYPE_2__ {int is_valid_bit; int syscon_status_off; } ;


 int STATUS_POLL_PERIOD_US ;
 int STATUS_POLL_TIMEOUT_US ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int ) ;

__attribute__((used)) static int armada_wait_sensor_validity(struct armada_thermal_priv *priv)
{
 u32 reg;

 return regmap_read_poll_timeout(priv->syscon,
     priv->data->syscon_status_off, reg,
     reg & priv->data->is_valid_bit,
     STATUS_POLL_PERIOD_US,
     STATUS_POLL_TIMEOUT_US);
}
