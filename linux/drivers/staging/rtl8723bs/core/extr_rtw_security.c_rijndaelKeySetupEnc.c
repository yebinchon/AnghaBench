
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GETU32 (int const*) ;
 int RCON (int) ;
 int TE414 (int) ;
 int TE421 (int) ;
 int TE432 (int) ;
 int TE443 (int) ;

__attribute__((used)) static void rijndaelKeySetupEnc(u32 rk[ ], const u8 cipherKey[])
{
 int i;
 u32 temp;

 rk[0] = GETU32(cipherKey);
 rk[1] = GETU32(cipherKey + 4);
 rk[2] = GETU32(cipherKey + 8);
 rk[3] = GETU32(cipherKey + 12);
 for (i = 0; i < 10; i++) {
  temp = rk[3];
  rk[4] = rk[0] ^
   TE421(temp) ^ TE432(temp) ^ TE443(temp) ^ TE414(temp) ^
   RCON(i);
  rk[5] = rk[1] ^ rk[4];
  rk[6] = rk[2] ^ rk[5];
  rk[7] = rk[3] ^ rk[6];
  rk += 4;
 }
}
