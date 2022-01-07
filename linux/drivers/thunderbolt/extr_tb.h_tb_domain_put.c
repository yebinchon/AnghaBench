
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void tb_domain_put(struct tb *tb)
{
 put_device(&tb->dev);
}
