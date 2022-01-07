
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cygnus_pinctrl {struct cygnus_mux_log* mux_log; int dev; } ;
struct TYPE_2__ {unsigned int offset; unsigned int shift; scalar_t__ alt; } ;
struct cygnus_mux_log {int is_configured; TYPE_1__ mux; } ;


 int CYGNUS_NUM_IOMUX ;
 unsigned int CYGNUS_NUM_IOMUX_REGS ;
 unsigned int CYGNUS_NUM_MUX_PER_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct cygnus_mux_log* devm_kcalloc (int ,int ,int,int ) ;

__attribute__((used)) static int cygnus_mux_log_init(struct cygnus_pinctrl *pinctrl)
{
 struct cygnus_mux_log *log;
 unsigned int i, j;

 pinctrl->mux_log = devm_kcalloc(pinctrl->dev, CYGNUS_NUM_IOMUX,
     sizeof(struct cygnus_mux_log),
     GFP_KERNEL);
 if (!pinctrl->mux_log)
  return -ENOMEM;

 for (i = 0; i < CYGNUS_NUM_IOMUX_REGS; i++) {
  for (j = 0; j < CYGNUS_NUM_MUX_PER_REG; j++) {
   log = &pinctrl->mux_log[i * CYGNUS_NUM_MUX_PER_REG
    + j];
   log->mux.offset = i * 4;
   log->mux.shift = j * 4;
   log->mux.alt = 0;
   log->is_configured = 0;
  }
 }

 return 0;
}
