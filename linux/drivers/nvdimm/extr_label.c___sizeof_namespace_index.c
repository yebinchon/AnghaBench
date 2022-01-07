
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nd_namespace_index {int dummy; } ;


 size_t ALIGN (scalar_t__,int ) ;
 scalar_t__ DIV_ROUND_UP (int ,int) ;
 int NSINDEX_ALIGN ;

__attribute__((used)) static size_t __sizeof_namespace_index(u32 nslot)
{
 return ALIGN(sizeof(struct nd_namespace_index) + DIV_ROUND_UP(nslot, 8),
   NSINDEX_ALIGN);
}
