
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn533_std_frame {int dummy; } ;
typedef struct pn533_std_frame pn533_ext_frame ;


 int PN533_FRAME_CMD (struct pn533_std_frame*) ;
 scalar_t__ PN533_STD_IS_EXTENDED (struct pn533_std_frame*) ;

__attribute__((used)) static u8 pn533_std_get_cmd_code(void *frame)
{
 struct pn533_std_frame *f = frame;
 struct pn533_ext_frame *eif = frame;

 if (PN533_STD_IS_EXTENDED(f))
  return PN533_FRAME_CMD(eif);
 else
  return PN533_FRAME_CMD(f);
}
