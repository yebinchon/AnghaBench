
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WAIT_FOR_BCN_TO_MAX ;
 unsigned int WAIT_FOR_BCN_TO_MIN ;

unsigned int decide_wait_for_beacon_timeout(unsigned int bcn_interval)
{
 if ((bcn_interval << 2) < WAIT_FOR_BCN_TO_MIN)
  return WAIT_FOR_BCN_TO_MIN;
 else if ((bcn_interval << 2) > WAIT_FOR_BCN_TO_MAX)
  return WAIT_FOR_BCN_TO_MAX;
 else
  return bcn_interval << 2;
}
