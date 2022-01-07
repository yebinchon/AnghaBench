
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irt_entry {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ kmalloc (int,int ) ;

__attribute__((used)) static struct irt_entry *iosapic_alloc_irt(int num_entries)
{
 unsigned long a;






 a = (unsigned long)kmalloc(sizeof(struct irt_entry) * num_entries + 8, GFP_KERNEL);
 a = (a + 7UL) & ~7UL;
 return (struct irt_entry *)a;
}
