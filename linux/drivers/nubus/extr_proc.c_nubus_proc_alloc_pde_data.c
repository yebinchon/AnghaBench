
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_proc_pde_data {unsigned char* res_ptr; unsigned int res_size; } ;


 int GFP_KERNEL ;
 struct nubus_proc_pde_data* kmalloc (int,int ) ;

__attribute__((used)) static struct nubus_proc_pde_data *
nubus_proc_alloc_pde_data(unsigned char *ptr, unsigned int size)
{
 struct nubus_proc_pde_data *pde_data;

 pde_data = kmalloc(sizeof(*pde_data), GFP_KERNEL);
 if (!pde_data)
  return ((void*)0);

 pde_data->res_ptr = ptr;
 pde_data->res_size = size;
 return pde_data;
}
