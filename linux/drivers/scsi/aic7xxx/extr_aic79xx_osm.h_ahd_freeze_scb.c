
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scb {TYPE_3__* platform_data; TYPE_1__* io_ctx; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {int qfrozen; } ;
struct TYPE_4__ {int result; } ;


 int CAM_DEV_QFRZN ;

__attribute__((used)) static inline void
ahd_freeze_scb(struct scb *scb)
{
 if ((scb->io_ctx->result & (CAM_DEV_QFRZN << 16)) == 0) {
                scb->io_ctx->result |= CAM_DEV_QFRZN << 16;
                scb->platform_data->dev->qfrozen++;
        }
}
