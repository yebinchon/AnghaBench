
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int evtq_work; } ;


 int INIT_WORK (int *,int ) ;
 int csio_evtq_worker ;

__attribute__((used)) static void
csio_hw_init_workers(struct csio_hw *hw)
{
 INIT_WORK(&hw->evtq_work, csio_evtq_worker);
}
