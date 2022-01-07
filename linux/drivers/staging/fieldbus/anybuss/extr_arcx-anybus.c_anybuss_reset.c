
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller_priv {scalar_t__ common_reset; } ;


 int CPLD_CONTROL_CRST ;
 int CPLD_CONTROL_RST1 ;
 int CPLD_CONTROL_RST2 ;
 int EINVAL ;
 int do_reset (struct controller_priv*,int ,int) ;

__attribute__((used)) static int anybuss_reset(struct controller_priv *cd,
    unsigned long id, bool reset)
{
 if (id >= 2)
  return -EINVAL;
 if (cd->common_reset)
  do_reset(cd, CPLD_CONTROL_CRST, reset);
 else
  do_reset(cd, id ? CPLD_CONTROL_RST2 : CPLD_CONTROL_RST1, reset);
 return 0;
}
