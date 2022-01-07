
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*) ;
 int vchiq_dump (void*,char*,int) ;

void
vchiq_dump_platform_state(void *dump_context)
{
 char buf[80];
 int len;

 len = snprintf(buf, sizeof(buf),
  "  Platform: 2835 (VC master)");
 vchiq_dump(dump_context, buf, len + 1);
}
