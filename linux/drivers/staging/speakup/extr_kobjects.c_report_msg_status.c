
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int pr_info (char*,char*) ;
 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void report_msg_status(int reset, int received, int used,
         int rejected, char *groupname)
{
 int len;
 char buf[160];

 if (reset) {
  pr_info("i18n messages from group %s reset to defaults\n",
   groupname);
 } else if (received) {
  len = snprintf(buf, sizeof(buf),
          " updated %d of %d i18n messages from group %s\n",
           used, received, groupname);
  if (rejected)
   snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
     " with %d reject%s\n",
     rejected, rejected > 1 ? "s" : "");
  pr_info("%s", buf);
 }
}
