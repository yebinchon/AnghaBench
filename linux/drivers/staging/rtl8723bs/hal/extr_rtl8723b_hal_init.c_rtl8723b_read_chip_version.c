
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int ReadChipVersion8723B (struct adapter*) ;

__attribute__((used)) static void rtl8723b_read_chip_version(struct adapter *padapter)
{
 ReadChipVersion8723B(padapter);
}
