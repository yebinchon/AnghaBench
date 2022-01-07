
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533 {scalar_t__ poll_mod_count; } ;



__attribute__((used)) static void pn533_poll_reset_mod_list(struct pn533 *dev)
{
 dev->poll_mod_count = 0;
}
