
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int ql2xextended_error_logging ;

__attribute__((used)) static inline int
ql_mask_match(uint level)
{
 return (level & ql2xextended_error_logging) == level;
}
