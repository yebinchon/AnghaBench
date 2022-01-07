
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int PF ;







 int debug ;
 int pr_cont (char*,...) ;
 int pr_debug (char*) ;
 int pr_info (char*,char const*,int,char) ;

__attribute__((used)) static void gsm_print_packet(const char *hdr, int addr, int cr,
     u8 control, const u8 *data, int dlen)
{
 if (!(debug & 1))
  return;

 pr_info("%s %d) %c: ", hdr, addr, "RC"[cr]);

 switch (control & ~PF) {
 case 131:
  pr_cont("SABM");
  break;
 case 130:
  pr_cont("UA");
  break;
 case 136:
  pr_cont("DISC");
  break;
 case 135:
  pr_cont("DM");
  break;
 case 129:
  pr_cont("UI");
  break;
 case 128:
  pr_cont("UIH");
  break;
 default:
  if (!(control & 0x01)) {
   pr_cont("I N(S)%d N(R)%d",
    (control & 0x0E) >> 1, (control & 0xE0) >> 5);
  } else switch (control & 0x0F) {
   case 132:
    pr_cont("RR(%d)", (control & 0xE0) >> 5);
    break;
   case 133:
    pr_cont("RNR(%d)", (control & 0xE0) >> 5);
    break;
   case 134:
    pr_cont("REJ(%d)", (control & 0xE0) >> 5);
    break;
   default:
    pr_cont("[%02X]", control);
  }
 }

 if (control & PF)
  pr_cont("(P)");
 else
  pr_cont("(F)");

 if (dlen) {
  int ct = 0;
  while (dlen--) {
   if (ct % 8 == 0) {
    pr_cont("\n");
    pr_debug("    ");
   }
   pr_cont("%02X ", *data++);
   ct++;
  }
 }
 pr_cont("\n");
}
