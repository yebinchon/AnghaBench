
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_mux* disc_data; } ;
struct gsm_mux {int (* error ) (struct gsm_mux*,unsigned char const,char) ;int (* receive ) (struct gsm_mux*,unsigned char const) ;} ;


 int DUMP_PREFIX_OFFSET ;





 int WARN_ONCE (int,char*,int ,char) ;
 int debug ;
 int print_hex_dump_bytes (char*,int ,unsigned char const*,int) ;
 int stub1 (struct gsm_mux*,unsigned char const) ;
 int stub2 (struct gsm_mux*,unsigned char const,char) ;
 int tty_name (struct tty_struct*) ;

__attribute__((used)) static void gsmld_receive_buf(struct tty_struct *tty, const unsigned char *cp,
         char *fp, int count)
{
 struct gsm_mux *gsm = tty->disc_data;
 const unsigned char *dp;
 char *f;
 int i;
 char flags = 130;

 if (debug & 4)
  print_hex_dump_bytes("gsmld_receive: ", DUMP_PREFIX_OFFSET,
         cp, count);

 for (i = count, dp = cp, f = fp; i; i--, dp++) {
  if (f)
   flags = *f++;
  switch (flags) {
  case 130:
   gsm->receive(gsm, *dp);
   break;
  case 129:
  case 132:
  case 128:
  case 131:
   gsm->error(gsm, *dp, flags);
   break;
  default:
   WARN_ONCE(1, "%s: unknown flag %d\n",
          tty_name(tty), flags);
   break;
  }
 }


}
