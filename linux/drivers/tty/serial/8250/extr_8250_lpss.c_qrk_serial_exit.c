
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpss8250 {int dummy; } ;


 int qrk_serial_exit_dma (struct lpss8250*) ;

__attribute__((used)) static void qrk_serial_exit(struct lpss8250 *lpss)
{
 qrk_serial_exit_dma(lpss);
}
