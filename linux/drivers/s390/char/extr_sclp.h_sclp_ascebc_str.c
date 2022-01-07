
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (char*,int) ;
 int ASCEBC_500 (char*,int) ;
 scalar_t__ MACHINE_IS_VM ;

__attribute__((used)) static inline void
sclp_ascebc_str(char *str, int nr)
{
 (MACHINE_IS_VM) ? ASCEBC(str, nr) : ASCEBC_500(str, nr);
}
