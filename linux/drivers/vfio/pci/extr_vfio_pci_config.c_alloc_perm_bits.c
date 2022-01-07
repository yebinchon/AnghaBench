
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perm_bits {int writefn; int readfn; void* write; void* virt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int free_perm_bits (struct perm_bits*) ;
 void* kzalloc (int,int ) ;
 int round_up (int,int) ;
 int vfio_default_config_read ;
 int vfio_default_config_write ;

__attribute__((used)) static int alloc_perm_bits(struct perm_bits *perm, int size)
{
 size = round_up(size, 4);





 perm->virt = kzalloc(size, GFP_KERNEL);
 perm->write = kzalloc(size, GFP_KERNEL);
 if (!perm->virt || !perm->write) {
  free_perm_bits(perm);
  return -ENOMEM;
 }

 perm->readfn = vfio_default_config_read;
 perm->writefn = vfio_default_config_write;

 return 0;
}
