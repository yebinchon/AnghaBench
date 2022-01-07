
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOURCE_CHARGE ;
 int SOURCE_ENERGY ;
 int SOURCE_VOLTAGE ;
 int do_calculate_time (int,int ) ;

__attribute__((used)) static int calculate_time(int status)
{
 int time;

 time = do_calculate_time(status, SOURCE_ENERGY);
 if (time != -1)
  return time;

 time = do_calculate_time(status, SOURCE_CHARGE);
 if (time != -1)
  return time;

 time = do_calculate_time(status, SOURCE_VOLTAGE);
 if (time != -1)
  return time;

 return -1;
}
