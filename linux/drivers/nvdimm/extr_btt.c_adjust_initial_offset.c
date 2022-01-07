
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nd_btt {scalar_t__ initial_offset; } ;



__attribute__((used)) static u64 adjust_initial_offset(struct nd_btt *nd_btt, u64 offset)
{
 return offset + nd_btt->initial_offset;
}
