
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char u_char ;
struct TYPE_4__ {int debug_flags; unsigned char bchans; unsigned char faxchans; int mac_addr; } ;
typedef TYPE_1__ hysdn_card ;


 int LOG_POF_RECORD ;

 unsigned char SYSR_TOK_END ;


 int hysdn_addlog (TYPE_1__*,char*,...) ;
 int memcpy (int ,unsigned char*,int) ;

int
EvalSysrTokData(hysdn_card *card, unsigned char *cp, int len)
{
 u_char *p;
 u_char crc;

 if (card->debug_flags & LOG_POF_RECORD)
  hysdn_addlog(card, "SysReady Token data length %d", len);

 if (len < 2) {
  hysdn_addlog(card, "SysReady Token Data to short");
  return (1);
 }
 for (p = cp, crc = 0; p < (cp + len - 2); p++)
  if ((crc & 0x80))
   crc = (((u_char) (crc << 1)) + 1) + *p;
  else
   crc = ((u_char) (crc << 1)) + *p;
 crc = ~crc;
 if (crc != *(cp + len - 1)) {
  hysdn_addlog(card, "SysReady Token Data invalid CRC");
  return (1);
 }
 len--;
 while (len > 0) {

  if (*cp == SYSR_TOK_END)
   return (0);

  if (len < (*(cp + 1) + 2)) {
   hysdn_addlog(card, "token 0x%x invalid length %d", *cp, *(cp + 1));
   return (1);
  }
  switch (*cp) {
  case 130:
   if (*(cp + 1) != 1)
    return (1);
   card->bchans = *(cp + 2);
   break;

  case 129:
   if (*(cp + 1) != 1)
    return (1);
   card->faxchans = *(cp + 2);
   break;

  case 128:
   if (*(cp + 1) != 6)
    return (1);
   memcpy(card->mac_addr, cp + 2, 6);
   break;

  default:
   hysdn_addlog(card, "unknown token 0x%02x length %d", *cp, *(cp + 1));
   break;
  }
  len -= (*(cp + 1) + 2);
  cp += (*(cp + 1) + 2);
 }

 hysdn_addlog(card, "no end token found");
 return (1);
}
