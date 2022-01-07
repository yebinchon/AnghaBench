
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_data {unsigned short** key_maps; } ;


 int ARRAY_SIZE (int ) ;
 int KTYP (unsigned short) ;
 int KT_DEAD ;
 int KT_LATIN ;
 int KT_LETTER ;
 size_t KVAL (unsigned short) ;
 int NR_KEYS ;
 int ebc_key_maps ;
 int memset (unsigned char*,int,int) ;
 size_t* ret_diacr ;

void
kbd_ascebc(struct kbd_data *kbd, unsigned char *ascebc)
{
 unsigned short *keymap, keysym;
 int i, j, k;

 memset(ascebc, 0x40, 256);
 for (i = 0; i < ARRAY_SIZE(ebc_key_maps); i++) {
  keymap = kbd->key_maps[i];
  if (!keymap)
   continue;
  for (j = 0; j < NR_KEYS; j++) {
   k = ((i & 1) << 7) + j;
   keysym = keymap[j];
   if (KTYP(keysym) == (KT_LATIN | 0xf0) ||
       KTYP(keysym) == (KT_LETTER | 0xf0))
    ascebc[KVAL(keysym)] = k;
   else if (KTYP(keysym) == (KT_DEAD | 0xf0))
    ascebc[ret_diacr[KVAL(keysym)]] = k;
  }
 }
}
