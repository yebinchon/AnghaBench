
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static inline struct tb *tb_domain_get(struct tb *tb)
{
 if (tb)
  get_device(&tb->dev);
 return tb;
}
