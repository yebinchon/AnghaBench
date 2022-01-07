
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_regs_hop {scalar_t__ egress_shared_buffer; scalar_t__ ingress_shared_buffer; scalar_t__ egress_fc; scalar_t__ ingress_fc; int pending; scalar_t__ enable; } ;
struct tb_port {int dummy; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int TB_CFG_HOPS ;
 int ktime_add_ms (int ,int) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int tb_port_read (struct tb_port*,struct tb_regs_hop*,int ,int,int) ;
 int tb_port_write (struct tb_port*,struct tb_regs_hop*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __tb_path_deactivate_hop(struct tb_port *port, int hop_index,
        bool clear_fc)
{
 struct tb_regs_hop hop;
 ktime_t timeout;
 int ret;


 ret = tb_port_read(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
 if (ret)
  return ret;


 if (!hop.enable)
  return 0;

 hop.enable = 0;

 ret = tb_port_write(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
 if (ret)
  return ret;


 timeout = ktime_add_ms(ktime_get(), 500);
 do {
  ret = tb_port_read(port, &hop, TB_CFG_HOPS, 2 * hop_index, 2);
  if (ret)
   return ret;

  if (!hop.pending) {
   if (clear_fc) {

    hop.ingress_fc = 0;
    hop.egress_fc = 0;
    hop.ingress_shared_buffer = 0;
    hop.egress_shared_buffer = 0;

    return tb_port_write(port, &hop, TB_CFG_HOPS,
           2 * hop_index, 2);
   }

   return 0;
  }

  usleep_range(10, 20);
 } while (ktime_before(ktime_get(), timeout));

 return -ETIMEDOUT;
}
