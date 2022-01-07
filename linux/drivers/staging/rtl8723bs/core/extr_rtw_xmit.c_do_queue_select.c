
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int qsel; int priority; } ;
struct adapter {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_rtl871x_xmit_c_ ;

__attribute__((used)) static void do_queue_select(struct adapter *padapter, struct pkt_attrib *pattrib)
{
 u8 qsel;

 qsel = pattrib->priority;
 RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("### do_queue_select priority =%d , qsel = %d\n", pattrib->priority, qsel));

 pattrib->qsel = qsel;
}
