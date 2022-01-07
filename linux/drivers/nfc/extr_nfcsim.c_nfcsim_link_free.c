
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim_link {int skb; } ;


 int dev_kfree_skb (int ) ;
 int kfree (struct nfcsim_link*) ;

__attribute__((used)) static void nfcsim_link_free(struct nfcsim_link *link)
{
 dev_kfree_skb(link->skb);
 kfree(link);
}
