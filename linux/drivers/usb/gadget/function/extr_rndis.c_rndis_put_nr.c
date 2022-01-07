
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_simple_remove (int *,int) ;
 int rndis_ida ;

__attribute__((used)) static inline void rndis_put_nr(int nr)
{
 ida_simple_remove(&rndis_ida, nr);
}
