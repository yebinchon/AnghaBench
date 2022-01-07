
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int match_string (int ,int ,char const*) ;
 int typec_port_data_roles ;

int typec_find_port_data_role(const char *name)
{
 return match_string(typec_port_data_roles,
       ARRAY_SIZE(typec_port_data_roles), name);
}
