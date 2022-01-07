
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int RTAS_EVENT_SCAN_ALL_EVENTS ;
 int WDRTAS_LOGBUFFER_LEN ;
 scalar_t__ __pa (int ) ;
 int pr_err (char*,long) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int ,int) ;
 long rtas_call (int ,int,int,int *,int ,int ,void*,int ) ;
 int wdrtas_logbuffer ;
 int wdrtas_token_event_scan ;

__attribute__((used)) static void wdrtas_timer_keepalive(void)
{
 long result;

 do {
  result = rtas_call(wdrtas_token_event_scan, 4, 1, ((void*)0),
       RTAS_EVENT_SCAN_ALL_EVENTS, 0,
       (void *)__pa(wdrtas_logbuffer),
       WDRTAS_LOGBUFFER_LEN);
  if (result < 0)
   pr_err("event-scan failed: %li\n", result);
  if (result == 0)
   print_hex_dump(KERN_INFO, "dumping event, data: ",
    DUMP_PREFIX_OFFSET, 16, 1,
    wdrtas_logbuffer, WDRTAS_LOGBUFFER_LEN, 0);
 } while (result == 0);
}
