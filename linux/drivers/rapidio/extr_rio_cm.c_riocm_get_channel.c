
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_channel {int ref; } ;


 int ch_idr ;
 struct rio_channel* idr_find (int *,int ) ;
 int idr_lock ;
 int kref_get (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct rio_channel *riocm_get_channel(u16 nr)
{
 struct rio_channel *ch;

 spin_lock_bh(&idr_lock);
 ch = idr_find(&ch_idr, nr);
 if (ch)
  kref_get(&ch->ref);
 spin_unlock_bh(&idr_lock);
 return ch;
}
