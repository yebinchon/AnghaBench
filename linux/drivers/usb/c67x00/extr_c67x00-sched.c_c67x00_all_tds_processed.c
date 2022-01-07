
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {int sie; } ;


 int c67x00_ll_husb_get_current_td (int ) ;

__attribute__((used)) static inline int c67x00_all_tds_processed(struct c67x00_hcd *c67x00)
{



 return !c67x00_ll_husb_get_current_td(c67x00->sie);
}
