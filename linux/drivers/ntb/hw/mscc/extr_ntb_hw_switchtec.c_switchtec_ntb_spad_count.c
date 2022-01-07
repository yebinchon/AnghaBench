
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {TYPE_1__* self_shared; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int spad; } ;


 int ARRAY_SIZE (int ) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static int switchtec_ntb_spad_count(struct ntb_dev *ntb)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 return ARRAY_SIZE(sndev->self_shared->spad);
}
