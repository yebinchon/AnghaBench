
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int backend_state ;
 int backend_state_wq ;
 int pr_info (char*,char*) ;
 long wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static void xenbus_reset_wait_for_backend(char *be, int expected)
{
 long timeout;
 timeout = wait_event_interruptible_timeout(backend_state_wq,
   backend_state == expected, 5 * HZ);
 if (timeout <= 0)
  pr_info("backend %s timed out\n", be);
}
