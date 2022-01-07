
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (int,int ) ;
 int cxlflash_minor ;

__attribute__((used)) static void cxlflash_put_minor(int minor)
{
 clear_bit(minor, cxlflash_minor);
}
