
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xb_data_to_read () ;
 scalar_t__ xb_data_to_write () ;

__attribute__((used)) static int xb_thread_work(void)
{
 return xb_data_to_read() || xb_data_to_write();
}
