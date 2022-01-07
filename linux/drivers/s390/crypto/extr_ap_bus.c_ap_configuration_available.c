
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_facility (int) ;

__attribute__((used)) static int ap_configuration_available(void)
{
 return test_facility(12);
}
