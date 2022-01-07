
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct oom_control {int order; int const gfp_mask; int * memcg; int * nodemask; int zonelist; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int first_memory_node ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int node_zonelist (int ,int const) ;
 int oom_lock ;
 int out_of_memory (struct oom_control*) ;
 int pr_info (char*) ;

__attribute__((used)) static void moom_callback(struct work_struct *ignored)
{
 const gfp_t gfp_mask = GFP_KERNEL;
 struct oom_control oc = {
  .zonelist = node_zonelist(first_memory_node, gfp_mask),
  .nodemask = ((void*)0),
  .memcg = ((void*)0),
  .gfp_mask = gfp_mask,
  .order = -1,
 };

 mutex_lock(&oom_lock);
 if (!out_of_memory(&oc))
  pr_info("OOM request ignored. No task eligible\n");
 mutex_unlock(&oom_lock);
}
