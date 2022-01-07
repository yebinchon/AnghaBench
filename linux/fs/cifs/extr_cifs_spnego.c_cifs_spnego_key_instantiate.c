
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_preparsed_payload {int datalen; int data; } ;
struct TYPE_2__ {char** data; } ;
struct key {TYPE_1__ payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmemdup (int ,int ,int ) ;

__attribute__((used)) static int
cifs_spnego_key_instantiate(struct key *key, struct key_preparsed_payload *prep)
{
 char *payload;
 int ret;

 ret = -ENOMEM;
 payload = kmemdup(prep->data, prep->datalen, GFP_KERNEL);
 if (!payload)
  goto error;


 key->payload.data[0] = payload;
 ret = 0;

error:
 return ret;
}
