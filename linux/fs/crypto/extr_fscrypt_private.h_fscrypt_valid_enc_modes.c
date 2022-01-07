
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ FSCRYPT_MODE_ADIANTUM ;
 scalar_t__ FSCRYPT_MODE_AES_128_CBC ;
 scalar_t__ FSCRYPT_MODE_AES_128_CTS ;
 scalar_t__ FSCRYPT_MODE_AES_256_CTS ;
 scalar_t__ FSCRYPT_MODE_AES_256_XTS ;

__attribute__((used)) static inline bool fscrypt_valid_enc_modes(u32 contents_mode,
        u32 filenames_mode)
{
 if (contents_mode == FSCRYPT_MODE_AES_128_CBC &&
     filenames_mode == FSCRYPT_MODE_AES_128_CTS)
  return 1;

 if (contents_mode == FSCRYPT_MODE_AES_256_XTS &&
     filenames_mode == FSCRYPT_MODE_AES_256_CTS)
  return 1;

 if (contents_mode == FSCRYPT_MODE_ADIANTUM &&
     filenames_mode == FSCRYPT_MODE_ADIANTUM)
  return 1;

 return 0;
}
