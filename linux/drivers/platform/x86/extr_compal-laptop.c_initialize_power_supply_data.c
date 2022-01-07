
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compal_data {int bat_serial_number; scalar_t__* bat_model_name; scalar_t__* bat_manufacturer_name; } ;


 int BAT_MANUFACTURER_NAME_ADDR ;
 size_t BAT_MANUFACTURER_NAME_LEN ;
 int BAT_MODEL_NAME_ADDR ;
 size_t BAT_MODEL_NAME_LEN ;
 int BAT_SERIAL_NUMBER_ADDR ;
 scalar_t__ BAT_SERIAL_NUMBER_LEN ;
 int ec_read_sequence (int ,scalar_t__*,size_t) ;
 int ec_read_u16 (int ) ;
 int scnprintf (int ,scalar_t__,char*,int ) ;

__attribute__((used)) static void initialize_power_supply_data(struct compal_data *data)
{
 ec_read_sequence(BAT_MANUFACTURER_NAME_ADDR,
     data->bat_manufacturer_name,
     BAT_MANUFACTURER_NAME_LEN);
 data->bat_manufacturer_name[BAT_MANUFACTURER_NAME_LEN] = 0;

 ec_read_sequence(BAT_MODEL_NAME_ADDR,
     data->bat_model_name,
     BAT_MODEL_NAME_LEN);
 data->bat_model_name[BAT_MODEL_NAME_LEN] = 0;

 scnprintf(data->bat_serial_number, BAT_SERIAL_NUMBER_LEN + 1, "%d",
    ec_read_u16(BAT_SERIAL_NUMBER_ADDR));
}
