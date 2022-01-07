
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int frame_lh; int node; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct td*,int ,int) ;

__attribute__((used)) static void init_td(struct td *td)
{
 memset(td, 0, sizeof(*td));
 INIT_LIST_HEAD(&td->node);
 INIT_LIST_HEAD(&td->frame_lh);
}
