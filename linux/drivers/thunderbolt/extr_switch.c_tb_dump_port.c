
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_regs_port_header {int nfc_credits; int max_counters; int max_out_hop_id; int max_in_hop_id; int type; int thunderbolt_version; int revision; int device_id; int vendor_id; int port_number; } ;
struct tb {int dummy; } ;


 int tb_dbg (struct tb*,char*,int ,...) ;
 int tb_port_type (struct tb_regs_port_header*) ;

__attribute__((used)) static void tb_dump_port(struct tb *tb, struct tb_regs_port_header *port)
{
 tb_dbg(tb,
        " Port %d: %x:%x (Revision: %d, TB Version: %d, Type: %s (%#x))\n",
        port->port_number, port->vendor_id, port->device_id,
        port->revision, port->thunderbolt_version, tb_port_type(port),
        port->type);
 tb_dbg(tb, "  Max hop id (in/out): %d/%d\n",
        port->max_in_hop_id, port->max_out_hop_id);
 tb_dbg(tb, "  Max counters: %d\n", port->max_counters);
 tb_dbg(tb, "  NFC Credits: %#x\n", port->nfc_credits);
}
