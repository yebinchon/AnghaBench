
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533 {int poll_mod_curr; int poll_mod_count; } ;



__attribute__((used)) static inline void pn533_poll_next_mod(struct pn533 *dev)
{
 dev->poll_mod_curr = (dev->poll_mod_curr + 1) % dev->poll_mod_count;
}
