
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ed {int node; int td_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct ed*,int ,int) ;

__attribute__((used)) static void init_ed(struct ed *ed)
{
 memset(ed, 0, sizeof(*ed));
 INIT_LIST_HEAD(&ed->td_list);
 INIT_LIST_HEAD(&ed->node);
}
