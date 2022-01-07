
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {int dummy; } ;
struct bfa_uf_mod_s {int dummy; } ;


 scalar_t__ BFA_STATUS_OK ;
 struct bfa_uf_s* bfa_uf_get (struct bfa_uf_mod_s*) ;
 scalar_t__ bfa_uf_post (struct bfa_uf_mod_s*,struct bfa_uf_s*) ;

__attribute__((used)) static void
bfa_uf_post_all(struct bfa_uf_mod_s *uf_mod)
{
 struct bfa_uf_s *uf;

 while ((uf = bfa_uf_get(uf_mod)) != ((void*)0)) {
  if (bfa_uf_post(uf_mod, uf) != BFA_STATUS_OK)
   break;
 }
}
