
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int rndis_ida ;

__attribute__((used)) static inline int rndis_get_nr(void)
{
 return ida_simple_get(&rndis_ida, 0, 0, GFP_KERNEL);
}
