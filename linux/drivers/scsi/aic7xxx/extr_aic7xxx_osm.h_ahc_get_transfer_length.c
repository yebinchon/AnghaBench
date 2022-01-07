
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct scb {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int xfer_len; } ;



__attribute__((used)) static inline
u_long ahc_get_transfer_length(struct scb *scb)
{
 return (scb->platform_data->xfer_len);
}
