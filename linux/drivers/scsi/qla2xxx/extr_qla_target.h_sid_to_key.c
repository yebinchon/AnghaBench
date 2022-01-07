
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int domain; int area; int al_pa; } ;
typedef TYPE_1__ be_id_t ;



__attribute__((used)) static inline uint32_t sid_to_key(const be_id_t s_id)
{
 return s_id.domain << 16 |
  s_id.area << 8 |
  s_id.al_pa;
}
