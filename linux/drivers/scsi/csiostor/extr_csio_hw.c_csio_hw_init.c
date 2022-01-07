
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int device_id; int vendor_id; } ;
struct TYPE_5__ {scalar_t__ log_level; TYPE_1__ pci; } ;
struct TYPE_6__ {int sm_list; } ;
struct csio_hw {int dev_num; int evt_free_q; int evt_active_q; TYPE_2__ params; int * chip_ops; int name; int sln_head; int lock; TYPE_3__ sm; } ;
struct csio_evt_msg {int list; } ;


 int CSIO_HW_NAME ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ csio_dbg_level ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_evtq_cleanup (struct csio_hw*) ;
 scalar_t__ csio_evtq_sz ;
 int csio_hw_get_device_id (struct csio_hw*) ;
 int csio_hw_mb_timer ;
 int csio_hw_set_description (struct csio_hw*,int ,int ) ;
 int csio_hw_to_mbm (struct csio_hw*) ;
 int csio_hw_to_mgmtm (struct csio_hw*) ;
 int csio_hw_to_scsim (struct csio_hw*) ;
 int csio_hw_to_wrm (struct csio_hw*) ;
 int csio_hws_uninit ;
 int csio_init_state (TYPE_3__*,int ) ;
 int csio_mbm_exit (int ) ;
 scalar_t__ csio_mbm_init (int ,struct csio_hw*,int ) ;
 int csio_mgmtm_exit (int ) ;
 int csio_mgmtm_init (int ,struct csio_hw*) ;
 int csio_scsim_exit (int ) ;
 int csio_scsim_init (int ,struct csio_hw*) ;
 int csio_set_fwevt_intr_idx (struct csio_hw*,int) ;
 int csio_set_nondata_intr_idx (struct csio_hw*,int) ;
 int csio_wrm_exit (int ,struct csio_hw*) ;
 int csio_wrm_init (int ,struct csio_hw*) ;
 int dev_num ;
 struct csio_evt_msg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int n_evt_freeq ;
 int spin_lock_init (int *) ;
 int strcpy (int ,int ) ;
 int t5_ops ;

int
csio_hw_init(struct csio_hw *hw)
{
 int rv = -EINVAL;
 uint32_t i;
 uint16_t ven_id, dev_id;
 struct csio_evt_msg *evt_entry;

 INIT_LIST_HEAD(&hw->sm.sm_list);
 csio_init_state(&hw->sm, csio_hws_uninit);
 spin_lock_init(&hw->lock);
 INIT_LIST_HEAD(&hw->sln_head);


 csio_hw_get_device_id(hw);

 strcpy(hw->name, CSIO_HW_NAME);


 hw->chip_ops = &t5_ops;



 ven_id = hw->params.pci.vendor_id;
 dev_id = hw->params.pci.device_id;

 csio_hw_set_description(hw, ven_id, dev_id);


 hw->params.log_level = (uint32_t) csio_dbg_level;

 csio_set_fwevt_intr_idx(hw, -1);
 csio_set_nondata_intr_idx(hw, -1);


 if (csio_mbm_init(csio_hw_to_mbm(hw), hw, csio_hw_mb_timer))
  goto err;

 rv = csio_wrm_init(csio_hw_to_wrm(hw), hw);
 if (rv)
  goto err_mbm_exit;

 rv = csio_scsim_init(csio_hw_to_scsim(hw), hw);
 if (rv)
  goto err_wrm_exit;

 rv = csio_mgmtm_init(csio_hw_to_mgmtm(hw), hw);
 if (rv)
  goto err_scsim_exit;

 INIT_LIST_HEAD(&hw->evt_active_q);
 INIT_LIST_HEAD(&hw->evt_free_q);
 for (i = 0; i < csio_evtq_sz; i++) {

  evt_entry = kzalloc(sizeof(struct csio_evt_msg), GFP_KERNEL);
  if (!evt_entry) {
   rv = -ENOMEM;
   csio_err(hw, "Failed to initialize eventq");
   goto err_evtq_cleanup;
  }

  list_add_tail(&evt_entry->list, &hw->evt_free_q);
  CSIO_INC_STATS(hw, n_evt_freeq);
 }

 hw->dev_num = dev_num;
 dev_num++;

 return 0;

err_evtq_cleanup:
 csio_evtq_cleanup(hw);
 csio_mgmtm_exit(csio_hw_to_mgmtm(hw));
err_scsim_exit:
 csio_scsim_exit(csio_hw_to_scsim(hw));
err_wrm_exit:
 csio_wrm_exit(csio_hw_to_wrm(hw), hw);
err_mbm_exit:
 csio_mbm_exit(csio_hw_to_mbm(hw));
err:
 return rv;
}
