
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_ctrl {int aen_masked; int aen_enabled; } ;


 int READ_ONCE (int ) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static inline bool nvmet_aen_bit_disabled(struct nvmet_ctrl *ctrl, u32 bn)
{
 if (!(READ_ONCE(ctrl->aen_enabled) & (1 << bn)))
  return 1;
 return test_and_set_bit(bn, &ctrl->aen_masked);
}
