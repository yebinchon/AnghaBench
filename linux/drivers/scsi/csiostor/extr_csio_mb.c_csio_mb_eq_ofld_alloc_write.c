
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_mb {int dummy; } ;
struct csio_hw {int dummy; } ;
struct csio_eq_params {int dummy; } ;


 int csio_mb_eq_ofld_alloc (struct csio_hw*,struct csio_mb*,void*,int ,struct csio_eq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;
 int csio_mb_eq_ofld_write (struct csio_hw*,struct csio_mb*,void*,int ,int,struct csio_eq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;

void
csio_mb_eq_ofld_alloc_write(struct csio_hw *hw, struct csio_mb *mbp,
       void *priv, uint32_t mb_tmo,
       struct csio_eq_params *eq_ofld_params,
       void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 csio_mb_eq_ofld_alloc(hw, mbp, priv, mb_tmo, eq_ofld_params, cbfn);
 csio_mb_eq_ofld_write(hw, mbp, priv, mb_tmo, 1,
         eq_ofld_params, cbfn);
}
