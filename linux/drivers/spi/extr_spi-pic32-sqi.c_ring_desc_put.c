
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_desc {int list; } ;
struct pic32_sqi {int bd_list_free; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void ring_desc_put(struct pic32_sqi *sqi, struct ring_desc *rdesc)
{
 list_move(&rdesc->list, &sqi->bd_list_free);
}
