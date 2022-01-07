
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ulptx_idata {void* len; void* cmd_more; } ;
struct TYPE_2__ {void* wr_hi; } ;
struct ulp_mem_io {void* len16; void* lock_addr; void* dlen; void* cmd; TYPE_1__ wr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {int adapter_type; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int FW_ULPTX_WR ;
 unsigned int FW_WR_ATOMIC_V (int ) ;
 unsigned int FW_WR_OP_V (int ) ;
 int INIT_ULPTX_WR (struct ulp_mem_io*,unsigned int,int ,int) ;
 unsigned int T5_ULP_MEMIO_IMM_V (int) ;
 unsigned int ULPTX_CMD_V (int ) ;
 unsigned int ULP_MEMIO_ADDR_V (unsigned int) ;
 unsigned int ULP_MEMIO_DATA_LEN_V (unsigned int) ;
 unsigned int ULP_MEMIO_ORDER_V (int ) ;
 int ULP_TX_MEM_WRITE ;
 int ULP_TX_SC_IMM ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 void* htonl (unsigned int) ;
 int is_t4 (int ) ;

__attribute__((used)) static inline void
ulp_mem_io_set_hdr(struct cxgbi_device *cdev,
     struct ulp_mem_io *req,
     unsigned int wr_len, unsigned int dlen,
     unsigned int pm_addr,
     int tid)
{
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct ulptx_idata *idata = (struct ulptx_idata *)(req + 1);

 INIT_ULPTX_WR(req, wr_len, 0, tid);
 req->wr.wr_hi = htonl(FW_WR_OP_V(FW_ULPTX_WR) |
  FW_WR_ATOMIC_V(0));
 req->cmd = htonl(ULPTX_CMD_V(ULP_TX_MEM_WRITE) |
  ULP_MEMIO_ORDER_V(is_t4(lldi->adapter_type)) |
  T5_ULP_MEMIO_IMM_V(!is_t4(lldi->adapter_type)));
 req->dlen = htonl(ULP_MEMIO_DATA_LEN_V(dlen >> 5));
 req->lock_addr = htonl(ULP_MEMIO_ADDR_V(pm_addr >> 5));
 req->len16 = htonl(DIV_ROUND_UP(wr_len - sizeof(req->wr), 16));

 idata->cmd_more = htonl(ULPTX_CMD_V(ULP_TX_SC_IMM));
 idata->len = htonl(dlen);
}
