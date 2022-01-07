
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int pr_info (char*,char const*) ;
 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void report_char_chartab_status(int reset, int received, int used,
           int rejected, int do_characters)
{
 static char const *object_type[] = {
  "character class entries",
  "character descriptions",
 };
 int len;
 char buf[80];

 if (reset) {
  pr_info("%s reset to defaults\n", object_type[do_characters]);
 } else if (received) {
  len = snprintf(buf, sizeof(buf),
          " updated %d of %d %s\n",
          used, received, object_type[do_characters]);
  if (rejected)
   snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
     " with %d reject%s\n",
     rejected, rejected > 1 ? "s" : "");
  pr_info("%s", buf);
 }
}
