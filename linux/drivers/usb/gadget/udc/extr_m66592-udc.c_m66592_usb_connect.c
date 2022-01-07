
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m66592 {int dummy; } ;


 int M66592_BEMPE ;
 int M66592_BRDYE ;
 int M66592_CMPL ;
 int M66592_CTRE ;
 int M66592_DPRPU ;
 int M66592_INTENB0 ;
 int M66592_RDST ;
 int M66592_SYSCFG ;
 int M66592_WDST ;
 int m66592_bset (struct m66592*,int,int ) ;

__attribute__((used)) static void m66592_usb_connect(struct m66592 *m66592)
{
 m66592_bset(m66592, M66592_CTRE, M66592_INTENB0);
 m66592_bset(m66592, M66592_WDST | M66592_RDST | M66592_CMPL,
   M66592_INTENB0);
 m66592_bset(m66592, M66592_BEMPE | M66592_BRDYE, M66592_INTENB0);

 m66592_bset(m66592, M66592_DPRPU, M66592_SYSCFG);
}
