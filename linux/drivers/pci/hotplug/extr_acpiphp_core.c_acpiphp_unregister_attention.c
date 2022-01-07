
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_attention_info {int dummy; } ;


 int EINVAL ;
 struct acpiphp_attention_info* attention_info ;

int acpiphp_unregister_attention(struct acpiphp_attention_info *info)
{
 int retval = -EINVAL;

 if (info && attention_info == info) {
  attention_info = ((void*)0);
  retval = 0;
 }
 return retval;
}
