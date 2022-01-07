
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct dvobj_priv {int dummy; } ;


 int devobj_deinit (struct dvobj_priv*) ;
 int sdio_deinit (struct dvobj_priv*) ;
 struct dvobj_priv* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;

__attribute__((used)) static void sdio_dvobj_deinit(struct sdio_func *func)
{
 struct dvobj_priv *dvobj = sdio_get_drvdata(func);

 sdio_set_drvdata(func, ((void*)0));
 if (dvobj) {
  sdio_deinit(dvobj);
  devobj_deinit(dvobj);
 }
 return;
}
