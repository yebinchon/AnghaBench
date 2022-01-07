
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_info {int nr_unreplied_reqs; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void scsiback_get(struct vscsibk_info *info)
{
 atomic_inc(&info->nr_unreplied_reqs);
}
