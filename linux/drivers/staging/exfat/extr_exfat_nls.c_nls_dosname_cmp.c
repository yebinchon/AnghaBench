
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct super_block {int dummy; } ;


 int DOS_NAME_LENGTH ;
 int strncmp (int *,int *,int ) ;

int nls_dosname_cmp(struct super_block *sb, u8 *a, u8 *b)
{
 return strncmp(a, b, DOS_NAME_LENGTH);
}
