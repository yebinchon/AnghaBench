
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axis_fifo {scalar_t__ base_addr; } ;


 scalar_t__ XLLF_IER_OFFSET ;
 int XLLF_INT_ALL_MASK ;
 int XLLF_INT_RC_MASK ;
 int XLLF_INT_RPORE_MASK ;
 int XLLF_INT_RPUE_MASK ;
 int XLLF_INT_RPURE_MASK ;
 int XLLF_INT_TC_MASK ;
 int XLLF_INT_TPOE_MASK ;
 int XLLF_INT_TSE_MASK ;
 scalar_t__ XLLF_ISR_OFFSET ;
 scalar_t__ XLLF_RDFR_OFFSET ;
 int XLLF_RDFR_RESET_MASK ;
 scalar_t__ XLLF_SRR_OFFSET ;
 int XLLF_SRR_RESET_MASK ;
 scalar_t__ XLLF_TDFR_OFFSET ;
 int XLLF_TDFR_RESET_MASK ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void reset_ip_core(struct axis_fifo *fifo)
{
 iowrite32(XLLF_SRR_RESET_MASK, fifo->base_addr + XLLF_SRR_OFFSET);
 iowrite32(XLLF_TDFR_RESET_MASK, fifo->base_addr + XLLF_TDFR_OFFSET);
 iowrite32(XLLF_RDFR_RESET_MASK, fifo->base_addr + XLLF_RDFR_OFFSET);
 iowrite32(XLLF_INT_TC_MASK | XLLF_INT_RC_MASK | XLLF_INT_RPURE_MASK |
    XLLF_INT_RPORE_MASK | XLLF_INT_RPUE_MASK |
    XLLF_INT_TPOE_MASK | XLLF_INT_TSE_MASK,
    fifo->base_addr + XLLF_IER_OFFSET);
 iowrite32(XLLF_INT_ALL_MASK, fifo->base_addr + XLLF_ISR_OFFSET);
}
