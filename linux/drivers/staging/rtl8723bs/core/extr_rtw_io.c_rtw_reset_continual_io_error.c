
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvobj_priv {int continual_io_error; } ;


 int atomic_set (int *,int ) ;

void rtw_reset_continual_io_error(struct dvobj_priv *dvobj)
{
 atomic_set(&dvobj->continual_io_error, 0);
}
