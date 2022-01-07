
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* spidev; } ;
struct st95hf_context {TYPE_2__ spicontext; } ;
struct TYPE_3__ {int dev; } ;


 int ASYNC ;
 unsigned char ST95HF_COMMAND_RESET ;
 int ST95HF_RESET_CMD_LEN ;
 int dev_err (int *,char*,int) ;
 int st95hf_send_st95enable_negativepulse (struct st95hf_context*) ;
 int st95hf_spi_send (TYPE_2__*,unsigned char*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st95hf_send_spi_reset_sequence(struct st95hf_context *st95context)
{
 int result = 0;
 unsigned char reset_cmd = ST95HF_COMMAND_RESET;

 result = st95hf_spi_send(&st95context->spicontext,
     &reset_cmd,
     ST95HF_RESET_CMD_LEN,
     ASYNC);
 if (result) {
  dev_err(&st95context->spicontext.spidev->dev,
   "spi reset sequence cmd error = %d", result);
  return result;
 }


 usleep_range(3000, 4000);


 st95hf_send_st95enable_negativepulse(st95context);


 usleep_range(10000, 20000);

 return result;
}
