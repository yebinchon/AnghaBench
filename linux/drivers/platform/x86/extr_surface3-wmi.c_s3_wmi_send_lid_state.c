
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input; } ;


 int SW_LID ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 TYPE_1__ s3_wmi ;
 int s3_wmi_query_lid (int*) ;

__attribute__((used)) static int s3_wmi_send_lid_state(void)
{
 int ret, lid_sw;

 ret = s3_wmi_query_lid(&lid_sw);
 if (ret)
  return ret;

 input_report_switch(s3_wmi.input, SW_LID, lid_sw);
 input_sync(s3_wmi.input);

 return 0;
}
