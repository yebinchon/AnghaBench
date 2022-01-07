
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* spidev; } ;
struct st95hf_context {TYPE_2__ spicontext; } ;
struct TYPE_3__ {int dev; } ;


 int CMD_ECHO ;
 unsigned char ECHORESPONSE ;
 int EIO ;
 int dev_err (int *,char*,unsigned char) ;
 int st95hf_send_recv_cmd (struct st95hf_context*,int ,int ,int *,int) ;
 int st95hf_spi_recv_echo_res (TYPE_2__*,unsigned char*) ;

__attribute__((used)) static int st95hf_echo_command(struct st95hf_context *st95context)
{
 int result = 0;
 unsigned char echo_response;

 result = st95hf_send_recv_cmd(st95context, CMD_ECHO, 0, ((void*)0), 0);
 if (result)
  return result;


 result = st95hf_spi_recv_echo_res(&st95context->spicontext,
       &echo_response);
 if (result) {
  dev_err(&st95context->spicontext.spidev->dev,
   "err: echo response receive error = 0x%x\n", result);
  return result;
 }

 if (echo_response == ECHORESPONSE)
  return 0;

 dev_err(&st95context->spicontext.spidev->dev, "err: echo res is 0x%x\n",
  echo_response);

 return -EIO;
}
