
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi_state {int dummy; } ;


 int MIPI_CSIS_CMN_CTRL ;
 int MIPI_CSIS_CMN_CTRL_RESET ;
 int mipi_csis_read (struct csi_state*,int ) ;
 int mipi_csis_write (struct csi_state*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mipi_csis_sw_reset(struct csi_state *state)
{
 u32 val = mipi_csis_read(state, MIPI_CSIS_CMN_CTRL);

 mipi_csis_write(state, MIPI_CSIS_CMN_CTRL,
   val | MIPI_CSIS_CMN_CTRL_RESET);
 usleep_range(10, 20);
}
