
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int min (int,int) ;

__attribute__((used)) static inline int link_speed_to_max_payload(unsigned int speed)
{

 return min(512 << speed, 4096);
}
