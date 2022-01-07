
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ESCAPE_CODE ;

__attribute__((used)) static inline int is_code(unsigned long val)
{
 return val == ESCAPE_CODE;
}
