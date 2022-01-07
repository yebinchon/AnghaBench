
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int NSEC_PER_USEC ;
 int do_div (int ,int ) ;

__attribute__((used)) static u32 gb_loopback_nsec_to_usec_latency(u64 elapsed_nsecs)
{
 do_div(elapsed_nsecs, NSEC_PER_USEC);
 return elapsed_nsecs;
}
