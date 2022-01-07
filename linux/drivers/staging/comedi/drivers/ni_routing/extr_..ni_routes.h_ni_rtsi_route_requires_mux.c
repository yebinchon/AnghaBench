
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int BIT (int) ;

__attribute__((used)) static inline bool ni_rtsi_route_requires_mux(s8 value)
{
 return value & BIT(6);
}
