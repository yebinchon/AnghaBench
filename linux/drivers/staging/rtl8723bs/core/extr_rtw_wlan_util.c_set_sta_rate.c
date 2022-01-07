
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct adapter {int dummy; } ;


 int Update_RA_Entry (struct adapter*,struct sta_info*) ;

void set_sta_rate(struct adapter *padapter, struct sta_info *psta)
{

 Update_RA_Entry(padapter, psta);
}
