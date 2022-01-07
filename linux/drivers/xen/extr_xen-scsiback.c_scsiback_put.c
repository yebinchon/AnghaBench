
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_info {int waiting_to_free; int nr_unreplied_reqs; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void scsiback_put(struct vscsibk_info *info)
{
 if (atomic_dec_and_test(&info->nr_unreplied_reqs))
  wake_up(&info->waiting_to_free);
}
