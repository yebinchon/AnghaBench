
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key {int dummy; } ;
typedef int key_ref_t ;


 int EAGAIN ;
 int EKEYREVOKED ;
 int ENOKEY ;
 struct key* ERR_CAST (int ) ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 int keyring_search (int ,struct key_type*,char const*,int) ;
 int make_key_ref (struct key*,int) ;

__attribute__((used)) static struct key *search_fscrypt_keyring(struct key *keyring,
       struct key_type *type,
       const char *description)
{




 key_ref_t keyref = make_key_ref(keyring, 1 );

 keyref = keyring_search(keyref, type, description, 0);
 if (IS_ERR(keyref)) {
  if (PTR_ERR(keyref) == -EAGAIN ||
      PTR_ERR(keyref) == -EKEYREVOKED)
   keyref = ERR_PTR(-ENOKEY);
  return ERR_CAST(keyref);
 }
 return key_ref_to_ptr(keyref);
}
