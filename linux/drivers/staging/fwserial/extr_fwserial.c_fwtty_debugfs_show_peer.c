
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct fwtty_peer {int generation; scalar_t__ status_addr; scalar_t__ mgmt_addr; scalar_t__ guid; int max_payload; int speed; int node_id; TYPE_1__* unit; } ;
struct TYPE_2__ {int device; } ;


 unsigned long long dev_name (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned long long,...) ;
 int seq_putc (struct seq_file*,char) ;
 int smp_rmb () ;

__attribute__((used)) static void fwtty_debugfs_show_peer(struct seq_file *m, struct fwtty_peer *peer)
{
 int generation = peer->generation;

 smp_rmb();
 seq_printf(m, " %s:", dev_name(&peer->unit->device));
 seq_printf(m, " node:%04x gen:%d", peer->node_id, generation);
 seq_printf(m, " sp:%d max:%d guid:%016llx", peer->speed,
     peer->max_payload, (unsigned long long)peer->guid);
 seq_printf(m, " mgmt:%012llx", (unsigned long long)peer->mgmt_addr);
 seq_printf(m, " addr:%012llx", (unsigned long long)peer->status_addr);
 seq_putc(m, '\n');
}
