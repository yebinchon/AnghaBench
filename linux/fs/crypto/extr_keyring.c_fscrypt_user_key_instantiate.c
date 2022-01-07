
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {int dummy; } ;
struct key {int dummy; } ;


 int FSCRYPT_MAX_KEY_SIZE ;
 int key_payload_reserve (struct key*,int ) ;

__attribute__((used)) static int fscrypt_user_key_instantiate(struct key *key,
     struct key_preparsed_payload *prep)
{





 return key_payload_reserve(key, FSCRYPT_MAX_KEY_SIZE);
}
