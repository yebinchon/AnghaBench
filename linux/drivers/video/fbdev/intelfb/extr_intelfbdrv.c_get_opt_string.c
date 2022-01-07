
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* OPT_STRVAL (char const*,char const*) ;
 char* kmalloc (int,int ) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static __inline__ char * get_opt_string(const char *this_opt, const char *name)
{
 const char *p;
 int i;
 char *ret;

 p = OPT_STRVAL(this_opt, name);
 i = 0;
 while (p[i] && p[i] != ' ' && p[i] != ',')
  i++;
 ret = kmalloc(i + 1, GFP_KERNEL);
 if (ret) {
  strncpy(ret, p, i);
  ret[i] = '\0';
 }
 return ret;
}
