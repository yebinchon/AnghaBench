
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sci_port_states { ____Placeholder_sci_port_states } sci_port_states ;







__attribute__((used)) static bool is_port_ready_state(enum sci_port_states state)
{
 switch (state) {
 case 131:
 case 128:
 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
