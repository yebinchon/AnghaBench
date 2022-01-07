
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_key_specifier {scalar_t__ __reserved; } ;


 scalar_t__ master_key_spec_len (struct fscrypt_key_specifier const*) ;

__attribute__((used)) static inline bool valid_key_spec(const struct fscrypt_key_specifier *spec)
{
 if (spec->__reserved)
  return 0;
 return master_key_spec_len(spec) != 0;
}
