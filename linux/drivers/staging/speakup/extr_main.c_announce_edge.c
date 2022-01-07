
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 scalar_t__ MSG_EDGE_MSGS_START ;
 int bleep (int ) ;
 int edge_quiet ;
 int spk_bleeps ;
 int spk_msg_get (scalar_t__) ;
 int spk_y ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void announce_edge(struct vc_data *vc, int msg_id)
{
 if (spk_bleeps & 1)
  bleep(spk_y);
 if ((spk_bleeps & 2) && (msg_id < edge_quiet))
  synth_printf("%s\n",
        spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
}
