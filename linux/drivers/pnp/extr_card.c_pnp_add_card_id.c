
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_id {char* id; struct pnp_id* next; } ;
struct pnp_card {struct pnp_id* id; } ;


 int GFP_KERNEL ;
 struct pnp_id* kzalloc (int,int ) ;
 void* tolower (char) ;

__attribute__((used)) static struct pnp_id *pnp_add_card_id(struct pnp_card *card, char *id)
{
 struct pnp_id *dev_id, *ptr;

 dev_id = kzalloc(sizeof(struct pnp_id), GFP_KERNEL);
 if (!dev_id)
  return ((void*)0);

 dev_id->id[0] = id[0];
 dev_id->id[1] = id[1];
 dev_id->id[2] = id[2];
 dev_id->id[3] = tolower(id[3]);
 dev_id->id[4] = tolower(id[4]);
 dev_id->id[5] = tolower(id[5]);
 dev_id->id[6] = tolower(id[6]);
 dev_id->id[7] = '\0';

 dev_id->next = ((void*)0);
 ptr = card->id;
 while (ptr && ptr->next)
  ptr = ptr->next;
 if (ptr)
  ptr->next = dev_id;
 else
  card->id = dev_id;

 return dev_id;
}
