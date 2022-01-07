
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct key {int datalen; TYPE_1__ payload; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void
cifs_idmap_key_destroy(struct key *key)
{
 if (key->datalen > sizeof(key->payload))
  kfree(key->payload.data[0]);
}
