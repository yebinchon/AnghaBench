
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_ntb {TYPE_1__* peer_shared; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int * spad; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int EIO ;
 int NTB_DEF_PEER_IDX ;
 int iowrite32 (int ,int *) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static int switchtec_ntb_peer_spad_write(struct ntb_dev *ntb, int pidx,
      int sidx, u32 val)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 if (pidx != NTB_DEF_PEER_IDX)
  return -EINVAL;

 if (sidx < 0 || sidx >= ARRAY_SIZE(sndev->peer_shared->spad))
  return -EINVAL;

 if (!sndev->peer_shared)
  return -EIO;

 iowrite32(val, &sndev->peer_shared->spad[sidx]);

 return 0;
}
