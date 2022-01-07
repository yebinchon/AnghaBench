
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int sge_control; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct csio_hw {TYPE_2__ wrm; } ;


 int EGRSTATUSPAGESIZE_F ;

__attribute__((used)) static inline uint32_t
csio_wr_qstat_pgsz(struct csio_hw *hw)
{
 return (hw->wrm.sge.sge_control & EGRSTATUSPAGESIZE_F) ? 128 : 64;
}
