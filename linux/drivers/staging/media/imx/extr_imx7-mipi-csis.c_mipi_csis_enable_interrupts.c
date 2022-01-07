
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int dummy; } ;


 int MIPI_CSIS_INTMSK ;
 int mipi_csis_write (struct csi_state*,int ,int) ;

__attribute__((used)) static void mipi_csis_enable_interrupts(struct csi_state *state, bool on)
{
 mipi_csis_write(state, MIPI_CSIS_INTMSK, on ? 0xffffffff : 0);
}
