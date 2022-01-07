
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv_dvc_var {int * carrier; int carrier_addr; } ;
struct TYPE_2__ {struct adv_dvc_var adv_dvc_var; } ;
struct asc_board {int * adv_sgblk_pool; int * adv_reqp; int adv_reqp_addr; int adv_reqp_size; int dev; TYPE_1__ dvc_var; } ;


 int ADV_CARRIER_BUFSIZE ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int dma_pool_destroy (int *) ;

__attribute__((used)) static void advansys_wide_free_mem(struct asc_board *board)
{
 struct adv_dvc_var *adv_dvc = &board->dvc_var.adv_dvc_var;

 if (adv_dvc->carrier) {
  dma_free_coherent(board->dev, ADV_CARRIER_BUFSIZE,
      adv_dvc->carrier, adv_dvc->carrier_addr);
  adv_dvc->carrier = ((void*)0);
 }
 if (board->adv_reqp) {
  dma_free_coherent(board->dev, board->adv_reqp_size,
      board->adv_reqp, board->adv_reqp_addr);
  board->adv_reqp = ((void*)0);
 }
 if (board->adv_sgblk_pool) {
  dma_pool_destroy(board->adv_sgblk_pool);
  board->adv_sgblk_pool = ((void*)0);
 }
}
