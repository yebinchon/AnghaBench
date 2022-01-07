
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {int input_dev; } ;


 int KEY_RFKILL ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void rbtn_input_event(struct rbtn_data *rbtn_data)
{
 input_report_key(rbtn_data->input_dev, KEY_RFKILL, 1);
 input_sync(rbtn_data->input_dev);
 input_report_key(rbtn_data->input_dev, KEY_RFKILL, 0);
 input_sync(rbtn_data->input_dev);
}
