
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fc_port_t ;


 int fcport_is_smaller (int *) ;

__attribute__((used)) static inline bool
fcport_is_bigger(fc_port_t *fcport)
{
 return !fcport_is_smaller(fcport);
}
