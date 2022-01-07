
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imxdi_dev {int dummy; } ;


 int DCALR ;
 int DCAMR ;
 int DCAMR_UNSET ;
 int DSR ;
 int DSR_CAF ;
 int di_write_busy_wait (struct imxdi_dev*,int,int ) ;

__attribute__((used)) static int di_handle_valid_state(struct imxdi_dev *imxdi, u32 dsr)
{

 di_write_busy_wait(imxdi, DCAMR_UNSET, DCAMR);
 di_write_busy_wait(imxdi, 0, DCALR);


 if (dsr & DSR_CAF)
  di_write_busy_wait(imxdi, DSR_CAF, DSR);

 return 0;
}
