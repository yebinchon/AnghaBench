
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int csio_evtq_cleanup (struct csio_hw*) ;
 int csio_hw_to_mbm (struct csio_hw*) ;
 int csio_hw_to_mgmtm (struct csio_hw*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_hw_to_wrm (struct csio_hw*) ;
 int csio_mbm_exit (int ) ;
 int csio_mgmtm_exit (int ) ;
 int csio_scsim_exit (int ) ;
 int csio_wrm_exit (int ,struct csio_hw*) ;

void
csio_hw_exit(struct csio_hw *hw)
{
 csio_evtq_cleanup(hw);
 csio_mgmtm_exit(csio_hw_to_mgmtm(hw));
 csio_scsim_exit(csio_hw_to_scsim(hw));
 csio_wrm_exit(csio_hw_to_wrm(hw), hw);
 csio_mbm_exit(csio_hw_to_mbm(hw));
}
