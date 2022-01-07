
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef void* u16 ;
struct wilc_cfg_word {int val; void* id; } ;
struct wilc_cfg_hword {void* val; void* id; } ;
struct TYPE_6__ {TYPE_2__* s; struct wilc_cfg_word* w; struct wilc_cfg_hword* hw; TYPE_1__* b; } ;
struct wilc {TYPE_3__ cfg; } ;
struct TYPE_5__ {int str; void* id; } ;
struct TYPE_4__ {int val; void* id; } ;


 int GET_WID_TYPE (void*) ;


 void* WID_NIL ;


 void* get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void wilc_wlan_parse_response_frame(struct wilc *wl, u8 *info, int size)
{
 u16 wid;
 u32 len = 0, i = 0;

 while (size > 0) {
  i = 0;
  wid = get_unaligned_le16(info);

  switch (GET_WID_TYPE(wid)) {
  case 131:
   do {
    if (wl->cfg.b[i].id == WID_NIL)
     break;

    if (wl->cfg.b[i].id == wid) {
     wl->cfg.b[i].val = info[4];
     break;
    }
    i++;
   } while (1);
   len = 3;
   break;

  case 129:
   do {
    struct wilc_cfg_hword *hw = &wl->cfg.hw[i];

    if (hw->id == WID_NIL)
     break;

    if (hw->id == wid) {
     hw->val = get_unaligned_le16(&info[4]);
     break;
    }
    i++;
   } while (1);
   len = 4;
   break;

  case 130:
   do {
    struct wilc_cfg_word *w = &wl->cfg.w[i];

    if (w->id == WID_NIL)
     break;

    if (w->id == wid) {
     w->val = get_unaligned_le32(&info[4]);
     break;
    }
    i++;
   } while (1);
   len = 6;
   break;

  case 128:
   do {
    if (wl->cfg.s[i].id == WID_NIL)
     break;

    if (wl->cfg.s[i].id == wid) {
     memcpy(wl->cfg.s[i].str, &info[2],
            (info[2] + 2));
     break;
    }
    i++;
   } while (1);
   len = 2 + info[2];
   break;

  default:
   break;
  }
  size -= (2 + len);
  info += (2 + len);
 }
}
