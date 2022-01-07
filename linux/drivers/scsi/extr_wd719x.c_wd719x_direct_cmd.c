
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wd719x {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int ETIMEDOUT ;
 int WD719X_AMR_CMD_PARAM ;
 int WD719X_AMR_CMD_PARAM_2 ;
 int WD719X_AMR_CMD_PARAM_3 ;
 int WD719X_AMR_COMMAND ;
 int WD719X_AMR_INT_STATUS ;
 int WD719X_AMR_SCB_IN ;
 int WD719X_CMD_ABORT ;
 int WD719X_CMD_ABORT_TAG ;
 int WD719X_CMD_BUSRESET ;
 int WD719X_CMD_READ_FIRMVER ;
 int WD719X_CMD_RESET ;
 int WD719X_DISABLE_INT ;
 int WD719X_INT_NONE ;
 int wd719x_wait_done (struct wd719x*,int) ;
 scalar_t__ wd719x_wait_ready (struct wd719x*) ;
 int wd719x_writeb (struct wd719x*,int ,int ) ;
 int wd719x_writel (struct wd719x*,int ,scalar_t__) ;

__attribute__((used)) static int wd719x_direct_cmd(struct wd719x *wd, u8 opcode, u8 dev, u8 lun,
        u8 tag, dma_addr_t data, int timeout)
{
 int ret = 0;


 wd719x_writeb(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);


 if (wd719x_wait_ready(wd))
  return -ETIMEDOUT;


 if (opcode != WD719X_CMD_BUSRESET && opcode != WD719X_CMD_ABORT &&
     opcode != WD719X_CMD_ABORT_TAG && opcode != WD719X_CMD_RESET)
  dev |= WD719X_DISABLE_INT;
 wd719x_writeb(wd, WD719X_AMR_CMD_PARAM, dev);
 wd719x_writeb(wd, WD719X_AMR_CMD_PARAM_2, lun);
 wd719x_writeb(wd, WD719X_AMR_CMD_PARAM_3, tag);
 if (data)
  wd719x_writel(wd, WD719X_AMR_SCB_IN, data);


 wd719x_writeb(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);


 wd719x_writeb(wd, WD719X_AMR_COMMAND, opcode);

 if (timeout)
  ret = wd719x_wait_done(wd, timeout);


 if (opcode != WD719X_CMD_READ_FIRMVER)
  wd719x_writeb(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);

 return ret;
}
