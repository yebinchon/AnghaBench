
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HIGH_INDEX_MASK ;

__attribute__((used)) static inline u16 get_row_index(u16 i)
{
 return i & ~HIGH_INDEX_MASK;
}
