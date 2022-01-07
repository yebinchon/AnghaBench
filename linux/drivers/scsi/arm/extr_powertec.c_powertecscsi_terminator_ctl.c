
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powertec_info {scalar_t__ base; int term_ctl; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 scalar_t__ POWERTEC_TERM_CONTROL ;
 int POWERTEC_TERM_ENABLE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
powertecscsi_terminator_ctl(struct Scsi_Host *host, int on_off)
{
 struct powertec_info *info = (struct powertec_info *)host->hostdata;

 info->term_ctl = on_off ? POWERTEC_TERM_ENABLE : 0;
 writeb(info->term_ctl, info->base + POWERTEC_TERM_CONTROL);
}
