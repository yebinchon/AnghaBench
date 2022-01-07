
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int EINVAL ;
 int HPWMI_WIRELESS2_QUERY ;
 int HPWMI_WRITE ;
 int hp_wmi_perform_query (int ,int ,char*,int,int ) ;

__attribute__((used)) static int hp_wmi_rfkill2_set_block(void *data, bool blocked)
{
 int rfkill_id = (int)(long)data;
 char buffer[4] = { 0x01, 0x00, rfkill_id, !blocked };
 int ret;

 ret = hp_wmi_perform_query(HPWMI_WIRELESS2_QUERY, HPWMI_WRITE,
       buffer, sizeof(buffer), 0);

 return ret <= 0 ? ret : -EINVAL;
}
