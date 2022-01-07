
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privcmd_buf_vma_private {unsigned int n_pages; int * pages; int list; } ;


 int __free_page (int ) ;
 int kfree (struct privcmd_buf_vma_private*) ;
 int list_del (int *) ;

__attribute__((used)) static void privcmd_buf_vmapriv_free(struct privcmd_buf_vma_private *vma_priv)
{
 unsigned int i;

 list_del(&vma_priv->list);

 for (i = 0; i < vma_priv->n_pages; i++)
  __free_page(vma_priv->pages[i]);

 kfree(vma_priv);
}
