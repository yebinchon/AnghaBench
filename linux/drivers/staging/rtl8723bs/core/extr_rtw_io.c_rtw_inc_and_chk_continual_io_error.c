
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvobj_priv {int continual_io_error; } ;


 int DBG_871X (char*,struct dvobj_priv*,int,int) ;
 int MAX_CONTINUAL_IO_ERR ;
 int atomic_inc_return (int *) ;

int rtw_inc_and_chk_continual_io_error(struct dvobj_priv *dvobj)
{
 int ret = 0;
 int value = atomic_inc_return(&dvobj->continual_io_error);
 if (value > MAX_CONTINUAL_IO_ERR) {
  DBG_871X("[dvobj:%p][ERROR] continual_io_error:%d > %d\n", dvobj, value, MAX_CONTINUAL_IO_ERR);
  ret = 1;
 } else {

 }
 return ret;
}
