
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct adapter {int dummy; } ;


 unsigned int _SUCCESS ;

unsigned int DoReserved(struct adapter *padapter, union recv_frame *precv_frame)
{


 return _SUCCESS;
}
