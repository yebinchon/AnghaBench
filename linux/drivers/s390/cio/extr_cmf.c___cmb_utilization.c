
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int get_tod_clock () ;
 int time_to_nsec (int) ;
 int tod_to_ns (int) ;

__attribute__((used)) static u64 __cmb_utilization(u64 device_connect_time, u64 function_pending_time,
        u64 device_disconnect_time, u64 start_time)
{
 u64 utilization, elapsed_time;

 utilization = time_to_nsec(device_connect_time +
       function_pending_time +
       device_disconnect_time);

 elapsed_time = get_tod_clock() - start_time;
 elapsed_time = tod_to_ns(elapsed_time);
 elapsed_time /= 1000;

 return elapsed_time ? (utilization / elapsed_time) : 0;
}
