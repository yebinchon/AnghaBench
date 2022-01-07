
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_card {unsigned int num_chips; } ;



__attribute__((used)) static inline bool cy_is_Z(struct cyclades_card *card)
{
 return card->num_chips == (unsigned int)-1;
}
