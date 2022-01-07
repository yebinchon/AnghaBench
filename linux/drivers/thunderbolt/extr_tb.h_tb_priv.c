
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {scalar_t__ privdata; } ;



__attribute__((used)) static inline void *tb_priv(struct tb *tb)
{
 return (void *)tb->privdata;
}
