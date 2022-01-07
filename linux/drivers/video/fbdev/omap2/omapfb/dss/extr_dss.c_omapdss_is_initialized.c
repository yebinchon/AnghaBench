
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dss_initialized ;

bool omapdss_is_initialized(void)
{
 return dss_initialized;
}
