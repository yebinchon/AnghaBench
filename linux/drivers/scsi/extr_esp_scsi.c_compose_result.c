
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int compose_result(unsigned int status, unsigned int message,
       unsigned int driver_code)
{
 return (status | (message << 8) | (driver_code << 16));
}
