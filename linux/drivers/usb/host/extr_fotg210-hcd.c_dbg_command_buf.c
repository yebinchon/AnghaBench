
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CMD_ASE ;
 int CMD_IAAD ;
 int CMD_PARK ;
 int CMD_PARK_CNT (int) ;
 int CMD_PSE ;
 int CMD_RESET ;
 int CMD_RUN ;
 int * fls_strings ;
 int scnprintf (char*,unsigned int,char*,char const*,char*,int,char*,int ,int,char*,char*,char*,int ,char*,char*) ;

__attribute__((used)) static int dbg_command_buf(char *buf, unsigned len, const char *label,
  u32 command)
{
 return scnprintf(buf, len,
   "%s%scommand %07x %s=%d ithresh=%d%s%s%s period=%s%s %s",
   label, label[0] ? " " : "", command,
   (command & CMD_PARK) ? " park" : "(park)",
   CMD_PARK_CNT(command),
   (command >> 16) & 0x3f,
   (command & CMD_IAAD) ? " IAAD" : "",
   (command & CMD_ASE) ? " Async" : "",
   (command & CMD_PSE) ? " Periodic" : "",
   fls_strings[(command >> 2) & 0x3],
   (command & CMD_RESET) ? " Reset" : "",
   (command & CMD_RUN) ? "RUN" : "HALT");
}
