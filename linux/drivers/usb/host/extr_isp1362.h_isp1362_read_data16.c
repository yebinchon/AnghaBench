
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp1362_hcd {int data_reg; } ;


 int DUMMY_DELAY_ACCESS ;
 int readw (int ) ;

__attribute__((used)) static u16 isp1362_read_data16(struct isp1362_hcd *isp1362_hcd)
{
 u16 val;

 DUMMY_DELAY_ACCESS;
 val = readw(isp1362_hcd->data_reg);

 return val;
}
