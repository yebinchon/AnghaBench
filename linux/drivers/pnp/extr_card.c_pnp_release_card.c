
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct pnp_card*) ;
 int pnp_free_card_ids (struct pnp_card*) ;
 struct pnp_card* to_pnp_card (struct device*) ;

__attribute__((used)) static void pnp_release_card(struct device *dmdev)
{
 struct pnp_card *card = to_pnp_card(dmdev);

 pnp_free_card_ids(card);
 kfree(card);
}
