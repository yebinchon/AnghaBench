
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_helper_get_interface_index_num (int) ;

__attribute__((used)) static inline int INDEX(int ipd_port)
{
 return cvmx_helper_get_interface_index_num(ipd_port);
}
