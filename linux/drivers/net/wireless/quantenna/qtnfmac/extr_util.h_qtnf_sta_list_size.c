
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_sta_list {int size; } ;


 size_t atomic_read (int *) ;

__attribute__((used)) static inline size_t qtnf_sta_list_size(const struct qtnf_sta_list *list)
{
 return atomic_read(&list->size);
}
