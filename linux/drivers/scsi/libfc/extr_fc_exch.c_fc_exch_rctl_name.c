
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 char const* fc_exch_name_lookup (unsigned int,int ,int ) ;
 int fc_exch_rctl_names ;

__attribute__((used)) static const char *fc_exch_rctl_name(unsigned int op)
{
 return fc_exch_name_lookup(op, fc_exch_rctl_names,
       ARRAY_SIZE(fc_exch_rctl_names));
}
