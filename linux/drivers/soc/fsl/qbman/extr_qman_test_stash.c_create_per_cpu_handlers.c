
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hp_handler {int node; int frame_ptr; int addr; int processor_id; } ;
struct hp_cpu {int handlers; int processor_id; int node; } ;


 int EIO ;
 int GFP_KERNEL ;
 int HP_PER_CPU ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int frame_dma ;
 int frame_ptr ;
 int hp_cpu_list ;
 int hp_cpu_list_length ;
 int hp_cpus ;
 int hp_handler_slab ;
 int hp_lock ;
 struct hp_handler* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_crit (char*) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct hp_cpu* this_cpu_ptr (int *) ;

__attribute__((used)) static int create_per_cpu_handlers(void)
{
 struct hp_handler *handler;
 int loop;
 struct hp_cpu *hp_cpu = this_cpu_ptr(&hp_cpus);

 hp_cpu->processor_id = smp_processor_id();
 spin_lock(&hp_lock);
 list_add_tail(&hp_cpu->node, &hp_cpu_list);
 hp_cpu_list_length++;
 spin_unlock(&hp_lock);
 INIT_LIST_HEAD(&hp_cpu->handlers);
 for (loop = 0; loop < HP_PER_CPU; loop++) {
  handler = kmem_cache_alloc(hp_handler_slab, GFP_KERNEL);
  if (!handler) {
   pr_crit("kmem_cache_alloc() failed");
   WARN_ON(1);
   return -EIO;
  }
  handler->processor_id = hp_cpu->processor_id;
  handler->addr = frame_dma;
  handler->frame_ptr = frame_ptr;
  list_add_tail(&handler->node, &hp_cpu->handlers);
 }
 return 0;
}
