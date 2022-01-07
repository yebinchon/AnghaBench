
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv_dvc_var {int max_host_qng; scalar_t__ chip_type; int err_code; void* carrier; int carrier_addr; } ;
struct TYPE_2__ {struct adv_dvc_var adv_dvc_var; } ;
struct asc_board {int adv_reqp_size; int adv_sgblk_pool; int dev; void* adv_reqp; int adv_reqp_addr; TYPE_1__ dvc_var; } ;
struct Scsi_Host {int dummy; } ;
typedef int adv_sgblk_t ;
typedef int adv_req_t ;


 int ADV_32BALIGN (int) ;
 int ADV_CARRIER_BUFSIZE ;
 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 int ADV_ERROR ;
 int ADV_TOT_SG_BLOCK ;
 int ASC_DBG (int,char*,...) ;
 int AdvInitAsc3550Driver (struct adv_dvc_var*) ;
 int AdvInitAsc38C0800Driver (struct adv_dvc_var*) ;
 int AdvInitAsc38C1600Driver (struct adv_dvc_var*) ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_pool_create (char*,int ,size_t,int,int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int advansys_wide_init_chip(struct Scsi_Host *shost)
{
 struct asc_board *board = shost_priv(shost);
 struct adv_dvc_var *adv_dvc = &board->dvc_var.adv_dvc_var;
 size_t sgblk_pool_size;
 int warn_code, err_code;





 adv_dvc->carrier = dma_alloc_coherent(board->dev,
  ADV_CARRIER_BUFSIZE, &adv_dvc->carrier_addr, GFP_KERNEL);
 ASC_DBG(1, "carrier 0x%p\n", adv_dvc->carrier);

 if (!adv_dvc->carrier)
  goto kmalloc_failed;






 board->adv_reqp_size = adv_dvc->max_host_qng * sizeof(adv_req_t);
 if (board->adv_reqp_size & 0x1f) {
  ASC_DBG(1, "unaligned reqp %lu bytes\n", sizeof(adv_req_t));
  board->adv_reqp_size = ADV_32BALIGN(board->adv_reqp_size);
 }
 board->adv_reqp = dma_alloc_coherent(board->dev, board->adv_reqp_size,
  &board->adv_reqp_addr, GFP_KERNEL);

 if (!board->adv_reqp)
  goto kmalloc_failed;

 ASC_DBG(1, "reqp 0x%p, req_cnt %d, bytes %lu\n", board->adv_reqp,
  adv_dvc->max_host_qng, board->adv_reqp_size);





 sgblk_pool_size = sizeof(adv_sgblk_t) * ADV_TOT_SG_BLOCK;
 board->adv_sgblk_pool = dma_pool_create("adv_sgblk", board->dev,
      sgblk_pool_size, 32, 0);

 ASC_DBG(1, "sg_cnt %d * %lu = %lu bytes\n", ADV_TOT_SG_BLOCK,
  sizeof(adv_sgblk_t), sgblk_pool_size);

 if (!board->adv_sgblk_pool)
  goto kmalloc_failed;

 if (adv_dvc->chip_type == ADV_CHIP_ASC3550) {
  ASC_DBG(2, "AdvInitAsc3550Driver()\n");
  warn_code = AdvInitAsc3550Driver(adv_dvc);
 } else if (adv_dvc->chip_type == ADV_CHIP_ASC38C0800) {
  ASC_DBG(2, "AdvInitAsc38C0800Driver()\n");
  warn_code = AdvInitAsc38C0800Driver(adv_dvc);
 } else {
  ASC_DBG(2, "AdvInitAsc38C1600Driver()\n");
  warn_code = AdvInitAsc38C1600Driver(adv_dvc);
 }
 err_code = adv_dvc->err_code;

 if (warn_code || err_code) {
  shost_printk(KERN_WARNING, shost, "error: warn 0x%x, error "
   "0x%x\n", warn_code, err_code);
 }

 goto exit;

 kmalloc_failed:
 shost_printk(KERN_ERR, shost, "error: kmalloc() failed\n");
 err_code = ADV_ERROR;
 exit:
 return err_code;
}
