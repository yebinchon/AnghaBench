
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int prom_feval (char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static u32 starfire_get_time(void)
{
 static char obp_gettod[32];
 static u32 unix_tod;

 sprintf(obp_gettod, "h# %08x unix-gettod",
  (unsigned int) (long) &unix_tod);
 prom_feval(obp_gettod);

 return unix_tod;
}
