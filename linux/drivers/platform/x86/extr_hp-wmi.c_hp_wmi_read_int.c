
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int EINVAL ;
 int HPWMI_READ ;
 int hp_wmi_perform_query (int,int ,int*,int,int) ;

__attribute__((used)) static int hp_wmi_read_int(int query)
{
 int val = 0, ret;

 ret = hp_wmi_perform_query(query, HPWMI_READ, &val,
       sizeof(val), sizeof(val));

 if (ret)
  return ret < 0 ? ret : -EINVAL;

 return val;
}
