
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ntb_dev {int dummy; } ;


 int xeon_deinit_isr (struct intel_ntb_dev*) ;

__attribute__((used)) static void xeon_deinit_dev(struct intel_ntb_dev *ndev)
{
 xeon_deinit_isr(ndev);
}
