
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct adapter {int dummy; } ;


 int memset (union iwreq_data*,int ,int) ;

void indicate_wx_scan_complete_event(struct adapter *padapter)
{
 union iwreq_data wrqu;

 memset(&wrqu, 0, sizeof(union iwreq_data));


}
