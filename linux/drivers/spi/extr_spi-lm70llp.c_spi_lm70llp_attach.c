
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct TYPE_9__ {size_t flags; struct spi_master* master; int * txrx_word; int chipselect; } ;
struct TYPE_8__ {int max_speed_hz; size_t mode; struct spi_lm70llp* controller_data; scalar_t__ chip_select; int modalias; } ;
struct spi_lm70llp {struct pardevice* pd; struct parport* port; TYPE_4__ bitbang; TYPE_2__* spidev_lm70; TYPE_3__ info; } ;
struct parport {TYPE_1__* physport; } ;
struct pardevice {int dev; } ;
struct pardev_cb {int flags; struct spi_lm70llp* private; } ;
typedef int lm70llp_cb ;
struct TYPE_7__ {int bits_per_word; int dev; } ;
struct TYPE_6__ {int dev; } ;


 int DRVNAME ;
 int ENODEV ;
 int ENOMEM ;
 int PARPORT_FLAG_EXCL ;
 size_t SPI_3WIRE ;
 size_t SPI_MODE_0 ;
 int dev_dbg (int *,char*,int ) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,...) ;
 int lm70_INIT ;
 int lm70_chipselect ;
 int lm70_txrx ;
 struct spi_lm70llp* lm70llp ;
 int mdelay (int) ;
 int memset (struct pardev_cb*,int ,int) ;
 int parport_claim (struct pardevice*) ;
 struct pardevice* parport_register_dev_model (struct parport*,int ,struct pardev_cb*,int ) ;
 int parport_release (struct pardevice*) ;
 int parport_unregister_device (struct pardevice*) ;
 int parport_write_data (struct parport*,int ) ;
 int pr_info (char*,int) ;
 int pr_warn (char*) ;
 struct spi_master* spi_alloc_master (int ,int) ;
 int spi_bitbang_start (TYPE_4__*) ;
 int spi_bitbang_stop (TYPE_4__*) ;
 struct spi_lm70llp* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 TYPE_2__* spi_new_device (struct spi_master*,TYPE_3__*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void spi_lm70llp_attach(struct parport *p)
{
 struct pardevice *pd;
 struct spi_lm70llp *pp;
 struct spi_master *master;
 int status;
 struct pardev_cb lm70llp_cb;

 if (lm70llp) {
  pr_warn("spi_lm70llp instance already loaded. Aborting.\n");
  return;
 }





 master = spi_alloc_master(p->physport->dev, sizeof *pp);
 if (!master) {
  status = -ENOMEM;
  goto out_fail;
 }
 pp = spi_master_get_devdata(master);




 pp->bitbang.master = master;
 pp->bitbang.chipselect = lm70_chipselect;
 pp->bitbang.txrx_word[SPI_MODE_0] = lm70_txrx;
 pp->bitbang.flags = SPI_3WIRE;




 pp->port = p;
 memset(&lm70llp_cb, 0, sizeof(lm70llp_cb));
 lm70llp_cb.private = pp;
 lm70llp_cb.flags = PARPORT_FLAG_EXCL;
 pd = parport_register_dev_model(p, DRVNAME, &lm70llp_cb, 0);

 if (!pd) {
  status = -ENOMEM;
  goto out_free_master;
 }
 pp->pd = pd;

 status = parport_claim(pd);
 if (status < 0)
  goto out_parport_unreg;




 status = spi_bitbang_start(&pp->bitbang);
 if (status < 0) {
  dev_warn(&pd->dev, "spi_bitbang_start failed with status %d\n",
    status);
  goto out_off_and_release;
 }







 strcpy(pp->info.modalias, "lm70");
 pp->info.max_speed_hz = 6 * 1000 * 1000;
 pp->info.chip_select = 0;
 pp->info.mode = SPI_3WIRE | SPI_MODE_0;


 parport_write_data(pp->port, lm70_INIT);




 pp->info.controller_data = pp;
 pp->spidev_lm70 = spi_new_device(pp->bitbang.master, &pp->info);
 if (pp->spidev_lm70)
  dev_dbg(&pp->spidev_lm70->dev, "spidev_lm70 at %s\n",
   dev_name(&pp->spidev_lm70->dev));
 else {
  dev_warn(&pd->dev, "spi_new_device failed\n");
  status = -ENODEV;
  goto out_bitbang_stop;
 }
 pp->spidev_lm70->bits_per_word = 8;

 lm70llp = pp;
 return;

out_bitbang_stop:
 spi_bitbang_stop(&pp->bitbang);
out_off_and_release:

 parport_write_data(pp->port, 0);
 mdelay(10);
 parport_release(pp->pd);
out_parport_unreg:
 parport_unregister_device(pd);
out_free_master:
 spi_master_put(master);
out_fail:
 pr_info("spi_lm70llp probe fail, status %d\n", status);
}
