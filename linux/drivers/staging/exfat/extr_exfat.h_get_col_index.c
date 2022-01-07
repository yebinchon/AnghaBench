
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LOW_INDEX_BIT ;

__attribute__((used)) static inline u16 get_col_index(u16 i)
{
 return i >> LOW_INDEX_BIT;
}
