
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int sbs_supply_changed (int ) ;

__attribute__((used)) static void sbs_alert(struct i2c_client *client, enum i2c_alert_protocol prot,
 unsigned int data)
{
 sbs_supply_changed(i2c_get_clientdata(client));
}
