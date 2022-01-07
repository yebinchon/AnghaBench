
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct scb {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int sense_resid; } ;



__attribute__((used)) static inline
void ahc_set_sense_residual(struct scb *scb, u_long resid)
{
 scb->platform_data->sense_resid = resid;
}
