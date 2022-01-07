
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_channel_config {unsigned int subbuffer_size; int data_type; int packets_per_xact; } ;


 unsigned int AV_PACKETS_PER_XACT ;


 unsigned int USB_MTU ;
 int pr_warn (char*) ;

__attribute__((used)) static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
{
 unsigned int frame_size = 0;
 unsigned int sub_size = cfg->subbuffer_size;

 if (!sub_size) {
  pr_warn("Misconfig: Subbuffer size zero.\n");
  return frame_size;
 }
 switch (cfg->data_type) {
 case 129:
  frame_size = AV_PACKETS_PER_XACT * sub_size;
  break;
 case 128:
  if (cfg->packets_per_xact == 0) {
   pr_warn("Misconfig: Packets per XACT zero\n");
   frame_size = 0;
  } else if (cfg->packets_per_xact == 0xFF) {
   frame_size = (USB_MTU / sub_size) * sub_size;
  } else {
   frame_size = cfg->packets_per_xact * sub_size;
  }
  break;
 default:
  pr_warn("Query frame size of non-streaming channel\n");
  break;
 }
 return frame_size;
}
