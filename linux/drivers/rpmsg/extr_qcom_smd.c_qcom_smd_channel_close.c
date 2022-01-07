
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_channel {int * bounce_buffer; } ;


 int SMD_CHANNEL_CLOSED ;
 int kfree (int *) ;
 int qcom_smd_channel_reset (struct qcom_smd_channel*) ;
 int qcom_smd_channel_set_callback (struct qcom_smd_channel*,int *) ;
 int qcom_smd_channel_set_state (struct qcom_smd_channel*,int ) ;

__attribute__((used)) static void qcom_smd_channel_close(struct qcom_smd_channel *channel)
{
 qcom_smd_channel_set_callback(channel, ((void*)0));

 kfree(channel->bounce_buffer);
 channel->bounce_buffer = ((void*)0);

 qcom_smd_channel_set_state(channel, SMD_CHANNEL_CLOSED);
 qcom_smd_channel_reset(channel);
}
