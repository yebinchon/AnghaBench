
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_common {TYPE_1__* fsg; } ;
struct fsg_buffhd {int state; int inreq; } ;
struct TYPE_2__ {int bulk_in; } ;


 int BUF_STATE_EMPTY ;
 int BUF_STATE_SENDING ;
 int fsg_is_set (struct fsg_common*) ;
 scalar_t__ start_transfer (TYPE_1__*,int ,int ) ;

__attribute__((used)) static bool start_in_transfer(struct fsg_common *common, struct fsg_buffhd *bh)
{
 if (!fsg_is_set(common))
  return 0;
 bh->state = BUF_STATE_SENDING;
 if (start_transfer(common->fsg, common->fsg->bulk_in, bh->inreq))
  bh->state = BUF_STATE_EMPTY;
 return 1;
}
