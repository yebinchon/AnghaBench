
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_dlci {int gsm; } ;


 int gsm_control_message (int ,unsigned int,int const*,int) ;
 int gsm_control_response (int ,unsigned int,int const*,int) ;
 int gsm_read_ea (unsigned int*,int ) ;

__attribute__((used)) static void gsm_dlci_command(struct gsm_dlci *dlci, const u8 *data, int len)
{

 unsigned int command = 0;
 while (len-- > 0) {
  if (gsm_read_ea(&command, *data++) == 1) {
   int clen = *data++;
   len--;

   clen >>= 1;

   if (clen > len)
    return;
   if (command & 1)
    gsm_control_message(dlci->gsm, command,
        data, clen);
   else
    gsm_control_response(dlci->gsm, command,
        data, clen);
   return;
  }
 }
}
