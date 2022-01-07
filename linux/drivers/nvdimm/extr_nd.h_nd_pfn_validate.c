
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int nd_pfn_validate(struct nd_pfn *nd_pfn, const char *sig)
{
 return -ENODEV;
}
