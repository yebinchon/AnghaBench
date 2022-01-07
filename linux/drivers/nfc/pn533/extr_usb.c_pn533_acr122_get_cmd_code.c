
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn533_acr122_rx_frame {int dummy; } ;


 int PN533_FRAME_CMD (struct pn533_acr122_rx_frame*) ;

__attribute__((used)) static u8 pn533_acr122_get_cmd_code(void *frame)
{
 struct pn533_acr122_rx_frame *f = frame;

 return PN533_FRAME_CMD(f);
}
