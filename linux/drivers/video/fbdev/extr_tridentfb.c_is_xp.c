
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYBERBLADEXPAi1 ;
 int CYBERBLADEXPm16 ;
 int CYBERBLADEXPm8 ;

__attribute__((used)) static inline int is_xp(int id)
{
 return (id == CYBERBLADEXPAi1) ||
  (id == CYBERBLADEXPm8) ||
  (id == CYBERBLADEXPm16);
}
