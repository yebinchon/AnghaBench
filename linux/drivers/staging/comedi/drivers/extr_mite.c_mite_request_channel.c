
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_ring {int dummy; } ;
struct mite_channel {int dummy; } ;
struct mite {scalar_t__ num_channels; } ;


 struct mite_channel* mite_request_channel_in_range (struct mite*,struct mite_ring*,int ,scalar_t__) ;

struct mite_channel *mite_request_channel(struct mite *mite,
       struct mite_ring *ring)
{
 return mite_request_channel_in_range(mite, ring, 0,
          mite->num_channels - 1);
}
