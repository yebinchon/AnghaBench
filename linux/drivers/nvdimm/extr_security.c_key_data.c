
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int sem; } ;
struct encrypted_key_payload {void* decrypted_data; } ;


 struct encrypted_key_payload* dereference_key_locked (struct key*) ;
 int lockdep_assert_held_read (int *) ;

__attribute__((used)) static void *key_data(struct key *key)
{
 struct encrypted_key_payload *epayload = dereference_key_locked(key);

 lockdep_assert_held_read(&key->sem);

 return epayload->decrypted_data;
}
