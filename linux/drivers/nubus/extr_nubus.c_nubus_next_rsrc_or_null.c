
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_rsrc {int list; } ;


 int list ;
 scalar_t__ list_is_last (int *,int *) ;
 struct nubus_rsrc* list_next_entry (struct nubus_rsrc*,int ) ;
 int nubus_func_rsrcs ;

struct nubus_rsrc *nubus_next_rsrc_or_null(struct nubus_rsrc *from)
{
 if (list_is_last(&from->list, &nubus_func_rsrcs))
  return ((void*)0);
 return list_next_entry(from, list);
}
