
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smem_private_entry {int size; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void *cached_entry_to_item(struct smem_private_entry *e)
{
 void *p = e;

 return p - le32_to_cpu(e->size);
}
