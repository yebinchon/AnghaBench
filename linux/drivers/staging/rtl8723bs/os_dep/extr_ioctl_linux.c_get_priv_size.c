
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int IW_PRIV_SIZE_MASK ;
 int IW_PRIV_TYPE_MASK ;
 int* iw_priv_type_size ;

__attribute__((used)) static int get_priv_size(__u16 args)
{
 int num = args & IW_PRIV_SIZE_MASK;
 int type = (args & IW_PRIV_TYPE_MASK) >> 12;

 return num * iw_priv_type_size[type];
}
