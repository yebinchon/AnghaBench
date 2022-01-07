
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_ub6250_info {int bbuf; } ;


 int kfree (int ) ;

__attribute__((used)) static void ene_ub6250_info_destructor(void *extra)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) extra;

 if (!extra)
  return;
 kfree(info->bbuf);
}
