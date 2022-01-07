
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* spidev; } ;
struct st95hf_context {TYPE_2__ spicontext; } ;
struct TYPE_3__ {int dev; } ;


 int ETIMEDOUT ;
 int dev_dbg (int *,char*,int,int) ;
 int st95hf_echo_command (struct st95hf_context*) ;
 int st95hf_send_spi_reset_sequence (struct st95hf_context*) ;
 int st95hf_send_st95enable_negativepulse (struct st95hf_context*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st95hf_por_sequence(struct st95hf_context *st95context)
{
 int nth_attempt = 1;
 int result;

 st95hf_send_st95enable_negativepulse(st95context);

 usleep_range(5000, 6000);
 do {

  result = st95hf_echo_command(st95context);

  dev_dbg(&st95context->spicontext.spidev->dev,
   "response from echo function = 0x%x, attempt = %d\n",
   result, nth_attempt);

  if (!result)
   return 0;


  if (nth_attempt == 2)
   st95hf_send_st95enable_negativepulse(st95context);
  else
   st95hf_send_spi_reset_sequence(st95context);


  usleep_range(50000, 51000);
 } while (nth_attempt++ < 3);

 return -ETIMEDOUT;
}
