
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ICM_PORT_INDEX_SHIFT ;
 int ICM_PORT_TYPE_MASK ;
 int TB_TYPE_PORT ;

__attribute__((used)) static inline int icm_fr_get_switch_index(u32 port)
{
 int index;

 if ((port & ICM_PORT_TYPE_MASK) != TB_TYPE_PORT)
  return 0;

 index = port >> ICM_PORT_INDEX_SHIFT;
 return index != 0xff ? index : 0;
}
