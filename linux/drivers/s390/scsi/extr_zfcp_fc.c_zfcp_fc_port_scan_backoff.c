
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_random_int () ;
 unsigned int port_scan_backoff ;

unsigned int zfcp_fc_port_scan_backoff(void)
{
 if (!port_scan_backoff)
  return 0;
 return get_random_int() % port_scan_backoff;
}
