
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wbuf ;
struct TYPE_6__ {int count; scalar_t__ cda; int flags; int cmd_code; } ;
struct TYPE_7__ {TYPE_1__ ccw; } ;
struct raw3270 {TYPE_2__ init_readpart; int init_view; int state; TYPE_2__ init_data; } ;
typedef scalar_t__ __u32 ;


 int CCW_FLAG_SLI ;
 int RAW3270_STATE_W4ATTN ;
 int TC_WRITESF ;
 scalar_t__ __pa (TYPE_2__*) ;
 int memcpy (TYPE_2__*,unsigned char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int raw3270_start_irq (int *,TYPE_2__*) ;

__attribute__((used)) static void
raw3270_writesf_readpart(struct raw3270 *rp)
{
 static const unsigned char wbuf[] =
  { 0x00, 0x07, 0x01, 0xff, 0x03, 0x00, 0x81 };


 memset(&rp->init_readpart, 0, sizeof(rp->init_readpart));
 memset(&rp->init_data, 0, sizeof(rp->init_data));
 memcpy(&rp->init_data, wbuf, sizeof(wbuf));
 rp->init_readpart.ccw.cmd_code = TC_WRITESF;
 rp->init_readpart.ccw.flags = CCW_FLAG_SLI;
 rp->init_readpart.ccw.count = sizeof(wbuf);
 rp->init_readpart.ccw.cda = (__u32) __pa(&rp->init_data);
 rp->state = RAW3270_STATE_W4ATTN;
 raw3270_start_irq(&rp->init_view, &rp->init_readpart);
}
