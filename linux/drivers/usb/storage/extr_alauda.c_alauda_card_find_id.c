
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alauda_card_info {unsigned char id; } ;


 struct alauda_card_info* alauda_card_ids ;

__attribute__((used)) static struct alauda_card_info *alauda_card_find_id(unsigned char id)
{
 int i;

 for (i = 0; alauda_card_ids[i].id != 0; i++)
  if (alauda_card_ids[i].id == id)
   return &(alauda_card_ids[i]);
 return ((void*)0);
}
