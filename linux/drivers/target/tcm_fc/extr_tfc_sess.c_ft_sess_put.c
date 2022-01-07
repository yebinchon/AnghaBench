
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_sess {int kref; } ;


 int BUG_ON (int) ;
 int ft_sess_free ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;

void ft_sess_put(struct ft_sess *sess)
{
 int sess_held = kref_read(&sess->kref);

 BUG_ON(!sess_held);
 kref_put(&sess->kref, ft_sess_free);
}
