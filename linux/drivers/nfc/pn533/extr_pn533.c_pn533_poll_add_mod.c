
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pn533_poll_modulations {int dummy; } ;
struct pn533 {size_t poll_mod_count; struct pn533_poll_modulations** poll_mod_active; } ;


 int * poll_mod ;

__attribute__((used)) static void pn533_poll_add_mod(struct pn533 *dev, u8 mod_index)
{
 dev->poll_mod_active[dev->poll_mod_count] =
  (struct pn533_poll_modulations *)&poll_mod[mod_index];
 dev->poll_mod_count++;
}
