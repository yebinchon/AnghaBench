
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_preparsed_payload {int datalen; int data; } ;
struct TYPE_2__ {char** data; } ;
struct key {int datalen; TYPE_1__ payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmemdup (int ,int,int ) ;
 int memcpy (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
cifs_idmap_key_instantiate(struct key *key, struct key_preparsed_payload *prep)
{
 char *payload;
 if (prep->datalen <= sizeof(key->payload)) {
  key->payload.data[0] = ((void*)0);
  memcpy(&key->payload, prep->data, prep->datalen);
 } else {
  payload = kmemdup(prep->data, prep->datalen, GFP_KERNEL);
  if (!payload)
   return -ENOMEM;
  key->payload.data[0] = payload;
 }

 key->datalen = prep->datalen;
 return 0;
}
