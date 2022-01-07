
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t VCHIQ_CONNSTATE_T ;


 char const** conn_state_names ;

inline const char *
get_conn_state_name(VCHIQ_CONNSTATE_T conn_state)
{
 return conn_state_names[conn_state];
}
