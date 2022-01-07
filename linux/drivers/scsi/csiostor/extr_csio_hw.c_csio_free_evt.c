
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int lock; int evt_free_q; } ;
struct csio_evt_msg {int list; } ;


 int CSIO_DEC_STATS (struct csio_hw*,int ) ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int n_evt_activeq ;
 int n_evt_freeq ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_free_evt(struct csio_hw *hw, struct csio_evt_msg *evt_entry)
{
 if (evt_entry) {
  spin_lock_irq(&hw->lock);
  list_del_init(&evt_entry->list);
  list_add_tail(&evt_entry->list, &hw->evt_free_q);
  CSIO_DEC_STATS(hw, n_evt_activeq);
  CSIO_INC_STATS(hw, n_evt_freeq);
  spin_unlock_irq(&hw->lock);
 }
}
