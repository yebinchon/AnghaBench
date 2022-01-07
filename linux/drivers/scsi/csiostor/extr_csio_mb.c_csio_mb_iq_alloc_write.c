
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_mb {int dummy; } ;
struct csio_iq_params {int dummy; } ;
struct csio_hw {int dummy; } ;


 int csio_mb_iq_alloc (struct csio_hw*,struct csio_mb*,void*,int ,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;
 int csio_mb_iq_write (struct csio_hw*,struct csio_mb*,void*,int ,int,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;

void
csio_mb_iq_alloc_write(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
         uint32_t mb_tmo, struct csio_iq_params *iq_params,
         void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 csio_mb_iq_alloc(hw, mbp, priv, mb_tmo, iq_params, cbfn);
 csio_mb_iq_write(hw, mbp, priv, mb_tmo, 1, iq_params, cbfn);
}
