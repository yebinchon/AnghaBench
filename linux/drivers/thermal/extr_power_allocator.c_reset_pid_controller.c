
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_allocator_params {scalar_t__ prev_err; scalar_t__ err_integral; } ;



__attribute__((used)) static void reset_pid_controller(struct power_allocator_params *params)
{
 params->err_integral = 0;
 params->prev_err = 0;
}
