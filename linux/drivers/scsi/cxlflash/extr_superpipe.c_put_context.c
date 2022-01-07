
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx_info {int mutex; } ;


 int mutex_unlock (int *) ;

void put_context(struct ctx_info *ctxi)
{
 mutex_unlock(&ctxi->mutex);
}
