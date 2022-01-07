
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;


 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void free_duped_table(struct sg_table *table)
{
 sg_free_table(table);
 kfree(table);
}
