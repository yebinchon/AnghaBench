
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PORT_CONNECT ;
 int PORT_CSC ;
 int PORT_PE ;
 int PORT_PEC ;
 int PORT_RESET ;
 int PORT_RESUME ;
 int PORT_SUSPEND ;
 int scnprintf (char*,unsigned int,char*,char const*,char*,int,int,int,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static char *dbg_port_buf(char *buf, unsigned len, const char *label, int port,
  u32 status)
{
 char *sig;


 switch (status & (3 << 10)) {
 case 0 << 10:
  sig = "se0";
  break;
 case 1 << 10:
  sig = "k";
  break;
 case 2 << 10:
  sig = "j";
  break;
 default:
  sig = "?";
  break;
 }

 scnprintf(buf, len, "%s%sport:%d status %06x %d sig=%s%s%s%s%s%s%s%s",
   label, label[0] ? " " : "", port, status,
   status >> 25,
   sig,
   (status & PORT_RESET) ? " RESET" : "",
   (status & PORT_SUSPEND) ? " SUSPEND" : "",
   (status & PORT_RESUME) ? " RESUME" : "",
   (status & PORT_PEC) ? " PEC" : "",
   (status & PORT_PE) ? " PE" : "",
   (status & PORT_CSC) ? " CSC" : "",
   (status & PORT_CONNECT) ? " CONNECT" : "");

 return buf;
}
