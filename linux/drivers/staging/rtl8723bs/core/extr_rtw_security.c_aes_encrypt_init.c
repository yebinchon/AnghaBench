
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void u32 ;


 int AES_PRIV_SIZE ;
 int rijndaelKeySetupEnc (void*,int *) ;
 void* rtw_malloc (int ) ;

__attribute__((used)) static void *aes_encrypt_init(u8 *key, size_t len)
{
 u32 *rk;
 if (len != 16)
  return ((void*)0);
 rk = rtw_malloc(AES_PRIV_SIZE);
 if (rk == ((void*)0))
  return ((void*)0);
 rijndaelKeySetupEnc(rk, key);
 return rk;
}
