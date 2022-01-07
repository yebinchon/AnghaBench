
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_ntb {TYPE_1__* self_shared; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int * spad; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int EIO ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static int switchtec_ntb_spad_write(struct ntb_dev *ntb, int idx, u32 val)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 if (idx < 0 || idx >= ARRAY_SIZE(sndev->self_shared->spad))
  return -EINVAL;

 if (!sndev->self_shared)
  return -EIO;

 sndev->self_shared->spad[idx] = val;

 return 0;
}
