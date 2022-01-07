
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** fnic_state_str ;

const char *fnic_state_to_str(unsigned int state)
{
 if (state >= ARRAY_SIZE(fnic_state_str) || !fnic_state_str[state])
  return "unknown";

 return fnic_state_str[state];
}
