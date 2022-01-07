
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_channel {int ref; } ;


 int kref_put (int *,int ) ;
 int riocm_ch_free ;

__attribute__((used)) static void riocm_put_channel(struct rio_channel *ch)
{
 kref_put(&ch->ref, riocm_ch_free);
}
