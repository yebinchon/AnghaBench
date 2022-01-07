
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int sem; } ;


 int key_put (struct key*) ;
 int up_read (int *) ;

__attribute__((used)) static void nvdimm_put_key(struct key *key)
{
 if (!key)
  return;

 up_read(&key->sem);
 key_put(key);
}
