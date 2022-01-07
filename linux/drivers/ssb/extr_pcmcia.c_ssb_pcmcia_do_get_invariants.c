
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int TupleDataLen; int* TupleData; } ;
typedef TYPE_2__ tuple_t ;
struct TYPE_4__ {int a0; int a1; int a2; int a3; } ;
struct ssb_sprom {int board_rev; int pa0b0; int pa0b1; int pa0b2; int itssi_a; int itssi_bg; int maxpwr_a; int maxpwr_bg; int country_code; int ant_available_a; int ant_available_bg; int boardflags_lo; int gpio0; int gpio1; int gpio2; int gpio3; TYPE_1__ antenna_gain; } ;
struct ssb_boardinfo {int vendor; } ;
struct ssb_init_invariants {struct ssb_boardinfo boardinfo; struct ssb_sprom sprom; } ;
struct pcmcia_device {int dummy; } ;


 int ENODEV ;
 int ENOSPC ;
 int GOTO_ERROR_ON (int,char*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int ssb_pcmcia_do_get_invariants(struct pcmcia_device *p_dev,
     tuple_t *tuple,
     void *priv)
{
 struct ssb_init_invariants *iv = priv;
 struct ssb_sprom *sprom = &iv->sprom;
 struct ssb_boardinfo *bi = &iv->boardinfo;
 const char *error_description;

 GOTO_ERROR_ON(tuple->TupleDataLen < 1, "VEN tpl < 1");
 switch (tuple->TupleData[0]) {
 case 131:
  GOTO_ERROR_ON((tuple->TupleDataLen != 5) &&
         (tuple->TupleDataLen != 7),
         "id tpl size");
  bi->vendor = tuple->TupleData[1] |
   ((u16)tuple->TupleData[2] << 8);
  break;
 case 133:
  GOTO_ERROR_ON(tuple->TupleDataLen != 2,
   "boardrev tpl size");
  sprom->board_rev = tuple->TupleData[1];
  break;
 case 128:
  GOTO_ERROR_ON((tuple->TupleDataLen != 9) &&
   (tuple->TupleDataLen != 10),
   "pa tpl size");
  sprom->pa0b0 = tuple->TupleData[1] |
   ((u16)tuple->TupleData[2] << 8);
  sprom->pa0b1 = tuple->TupleData[3] |
   ((u16)tuple->TupleData[4] << 8);
  sprom->pa0b2 = tuple->TupleData[5] |
   ((u16)tuple->TupleData[6] << 8);
  sprom->itssi_a = tuple->TupleData[7];
  sprom->itssi_bg = tuple->TupleData[7];
  sprom->maxpwr_a = tuple->TupleData[8];
  sprom->maxpwr_bg = tuple->TupleData[8];
  break;
 case 129:

  break;
 case 132:
  GOTO_ERROR_ON(tuple->TupleDataLen != 2,
   "ccode tpl size");
  sprom->country_code = tuple->TupleData[1];
  break;
 case 136:
  GOTO_ERROR_ON(tuple->TupleDataLen != 2,
   "ant tpl size");
  sprom->ant_available_a = tuple->TupleData[1];
  sprom->ant_available_bg = tuple->TupleData[1];
  break;
 case 135:
  GOTO_ERROR_ON(tuple->TupleDataLen != 2,
   "antg tpl size");
  sprom->antenna_gain.a0 = tuple->TupleData[1];
  sprom->antenna_gain.a1 = tuple->TupleData[1];
  sprom->antenna_gain.a2 = tuple->TupleData[1];
  sprom->antenna_gain.a3 = tuple->TupleData[1];
  break;
 case 134:
  GOTO_ERROR_ON((tuple->TupleDataLen != 3) &&
   (tuple->TupleDataLen != 5),
   "bfl tpl size");
  sprom->boardflags_lo = tuple->TupleData[1] |
   ((u16)tuple->TupleData[2] << 8);
  break;
 case 130:
  GOTO_ERROR_ON(tuple->TupleDataLen != 5,
   "leds tpl size");
  sprom->gpio0 = tuple->TupleData[1];
  sprom->gpio1 = tuple->TupleData[2];
  sprom->gpio2 = tuple->TupleData[3];
  sprom->gpio3 = tuple->TupleData[4];
  break;
 }
 return -ENOSPC;

error:
 pr_err("PCMCIA: Failed to fetch device invariants: %s\n",
        error_description);
 return -ENODEV;
}
