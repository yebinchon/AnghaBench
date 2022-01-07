
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int list; } ;


 int list_add_tail (int *,int *) ;
 int zcrypt_ops_list ;

void zcrypt_msgtype_register(struct zcrypt_ops *zops)
{
 list_add_tail(&zops->list, &zcrypt_ops_list);
}
