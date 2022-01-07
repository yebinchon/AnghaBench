
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_data {int mem_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;



 int EINVAL ;

 int add_interval (int *,unsigned long,unsigned long) ;
 int do_mem_probe (struct pcmcia_socket*,unsigned long,unsigned long,int *,int *) ;
 int sub_interval (int *,unsigned long,unsigned long) ;

__attribute__((used)) static int adjust_memory(struct pcmcia_socket *s, unsigned int action, unsigned long start, unsigned long end)
{
 struct socket_data *data = s->resource_data;
 unsigned long size = end - start + 1;
 int ret = 0;

 if (end < start)
  return -EINVAL;

 switch (action) {
 case 129:
  ret = add_interval(&data->mem_db, start, size);
  if (!ret)
   do_mem_probe(s, start, size, ((void*)0), ((void*)0));
  break;
 case 128:
  ret = sub_interval(&data->mem_db, start, size);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
