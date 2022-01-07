
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct comedi_buf_map* vm_private_data; } ;
struct comedi_buf_map {int dummy; } ;


 int comedi_buf_map_get (struct comedi_buf_map*) ;

__attribute__((used)) static void comedi_vm_open(struct vm_area_struct *area)
{
 struct comedi_buf_map *bm;

 bm = area->vm_private_data;
 comedi_buf_map_get(bm);
}
