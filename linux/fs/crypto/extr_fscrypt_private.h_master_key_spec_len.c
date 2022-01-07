
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_key_specifier {int type; } ;


 int FSCRYPT_KEY_DESCRIPTOR_SIZE ;
 int FSCRYPT_KEY_IDENTIFIER_SIZE ;



__attribute__((used)) static inline int master_key_spec_len(const struct fscrypt_key_specifier *spec)
{
 switch (spec->type) {
 case 129:
  return FSCRYPT_KEY_DESCRIPTOR_SIZE;
 case 128:
  return FSCRYPT_KEY_IDENTIFIER_SIZE;
 }
 return 0;
}
