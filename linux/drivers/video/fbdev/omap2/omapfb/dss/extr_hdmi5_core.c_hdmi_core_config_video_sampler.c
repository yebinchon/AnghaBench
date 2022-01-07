
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_core_data {int base; } ;


 int HDMI_CORE_TX_INVID0 ;
 int REG_FLD_MOD (int ,int ,int,int,int ) ;

__attribute__((used)) static void hdmi_core_config_video_sampler(struct hdmi_core_data *core)
{
 int video_mapping = 1;


 REG_FLD_MOD(core->base, HDMI_CORE_TX_INVID0, video_mapping, 4, 0);
}
