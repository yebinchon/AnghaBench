
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expansion_card {int dev; } ;
struct ecard_id {int dummy; } ;
struct Scsi_Host {int irq; } ;
struct NCR5380_hostdata {int dummy; } ;
struct TYPE_2__ {int io; } ;


 int ECARD_RES_MEMC ;
 int ENOMEM ;
 int FLAG_DMA_FIXUP ;
 int FLAG_LATE_DMA_SETUP ;
 int NCR5380_exit (struct Scsi_Host*) ;
 int NCR5380_init (struct Scsi_Host*,int) ;
 int NCR5380_maybe_reset_bus (struct Scsi_Host*) ;
 int NO_IRQ ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_request_resources (struct expansion_card*) ;
 int ecard_resource_len (struct expansion_card*,int ) ;
 int ecard_resource_start (struct expansion_card*,int ) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int oakscsi_template ;
 TYPE_1__* priv (struct Scsi_Host*) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;

__attribute__((used)) static int oakscsi_probe(struct expansion_card *ec, const struct ecard_id *id)
{
 struct Scsi_Host *host;
 int ret = -ENOMEM;

 ret = ecard_request_resources(ec);
 if (ret)
  goto out;

 host = scsi_host_alloc(&oakscsi_template, sizeof(struct NCR5380_hostdata));
 if (!host) {
  ret = -ENOMEM;
  goto release;
 }

 priv(host)->io = ioremap(ecard_resource_start(ec, ECARD_RES_MEMC),
                          ecard_resource_len(ec, ECARD_RES_MEMC));
 if (!priv(host)->io) {
  ret = -ENOMEM;
  goto unreg;
 }

 host->irq = NO_IRQ;

 ret = NCR5380_init(host, FLAG_DMA_FIXUP | FLAG_LATE_DMA_SETUP);
 if (ret)
  goto out_unmap;

 NCR5380_maybe_reset_bus(host);

 ret = scsi_add_host(host, &ec->dev);
 if (ret)
  goto out_exit;

 scsi_scan_host(host);
 goto out;

 out_exit:
 NCR5380_exit(host);
 out_unmap:
 iounmap(priv(host)->io);
 unreg:
 scsi_host_put(host);
 release:
 ecard_release_resources(ec);
 out:
 return ret;
}
