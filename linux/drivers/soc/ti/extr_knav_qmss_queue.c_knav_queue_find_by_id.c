
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct knav_queue_inst {int dummy; } ;
struct TYPE_3__ {int base_id; int num_queues; } ;


 TYPE_1__* kdev ;
 struct knav_queue_inst* knav_queue_match_id_to_inst (TYPE_1__*,int) ;

__attribute__((used)) static inline struct knav_queue_inst *knav_queue_find_by_id(int id)
{
 if (kdev->base_id <= id &&
     kdev->base_id + kdev->num_queues > id) {
  id -= kdev->base_id;
  return knav_queue_match_id_to_inst(kdev, id);
 }
 return ((void*)0);
}
