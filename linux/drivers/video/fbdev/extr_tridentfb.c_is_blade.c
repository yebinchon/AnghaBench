
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLADE3D ;
 int CYBERBLADEAi1 ;
 int CYBERBLADEAi1D ;
 int CYBERBLADEE4 ;
 int CYBERBLADEi1 ;
 int CYBERBLADEi1D ;
 int CYBERBLADEi7 ;
 int CYBERBLADEi7D ;

__attribute__((used)) static inline int is_blade(int id)
{
 return (id == BLADE3D) ||
  (id == CYBERBLADEE4) ||
  (id == CYBERBLADEi7) ||
  (id == CYBERBLADEi7D) ||
  (id == CYBERBLADEi1) ||
  (id == CYBERBLADEi1D) ||
  (id == CYBERBLADEAi1) ||
  (id == CYBERBLADEAi1D);
}
