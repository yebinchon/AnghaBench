
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sdpid; int hauai; int wauai; } ;
struct TYPE_5__ {int qcode; int h; int w; int flags0; int l; } ;
struct raw3270_ua {TYPE_3__ aua; TYPE_2__ uab; } ;
struct TYPE_4__ {scalar_t__ rc; } ;
struct raw3270 {int* init_data; int model; int rows; int cols; int flags; TYPE_1__ init_readmod; } ;


 int RAW3270_FLAGS_14BITADDR ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
raw3270_size_device(struct raw3270 *rp)
{
 struct raw3270_ua *uap;


 uap = (struct raw3270_ua *) (rp->init_data + 1);

 if (rp->init_readmod.rc || rp->init_data[0] != 0x88 ||
     uap->uab.qcode != 0x81) {

  rp->model = 2;
  rp->rows = 24;
  rp->cols = 80;
  return;
 }

 rp->rows = uap->uab.h;
 rp->cols = uap->uab.w;

 if ((uap->uab.flags0 & 0x0d) == 0x01)
  set_bit(RAW3270_FLAGS_14BITADDR, &rp->flags);

 if (uap->uab.l == sizeof(struct raw3270_ua) &&
     uap->aua.sdpid == 0x02) {
  rp->rows = uap->aua.hauai;
  rp->cols = uap->aua.wauai;
 }

 rp->model = 0;
 if (rp->rows == 24 && rp->cols == 80)
  rp->model = 2;
 if (rp->rows == 32 && rp->cols == 80)
  rp->model = 3;
 if (rp->rows == 43 && rp->cols == 80)
  rp->model = 4;
 if (rp->rows == 27 && rp->cols == 132)
  rp->model = 5;
}
