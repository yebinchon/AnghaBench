
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maven_data {scalar_t__ primary_head; } ;
struct TYPE_2__ {int control; } ;


 TYPE_1__* maven_controls ;

__attribute__((used)) static int* get_ctrl_ptr(struct maven_data* md, int idx) {
 return (int*)((char*)(md->primary_head) + maven_controls[idx].control);
}
