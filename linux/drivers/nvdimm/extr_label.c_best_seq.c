
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NSINDEX_SEQ_MASK ;
 int nd_inc_seq (int ) ;

__attribute__((used)) static u32 best_seq(u32 a, u32 b)
{
 a &= NSINDEX_SEQ_MASK;
 b &= NSINDEX_SEQ_MASK;

 if (a == 0 || a == b)
  return b;
 else if (b == 0)
  return a;
 else if (nd_inc_seq(a) == b)
  return b;
 else
  return a;
}
