
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int list; } ;


 int list_del_init (int *) ;

void zcrypt_msgtype_unregister(struct zcrypt_ops *zops)
{
 list_del_init(&zops->list);
}
