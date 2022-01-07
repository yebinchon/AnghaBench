
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int evtq_work; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void
csio_hw_exit_workers(struct csio_hw *hw)
{
 cancel_work_sync(&hw->evtq_work);
}
