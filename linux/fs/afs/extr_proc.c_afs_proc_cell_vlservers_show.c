
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct afs_vl_seq_net_private* private; } ;
struct afs_vlserver_list {size_t source; size_t status; } ;
struct afs_vlserver_entry {size_t source; size_t status; int weight; int priority; struct afs_vlserver* server; } ;
struct afs_vlserver {int name; int addresses; } ;
struct afs_vl_seq_net_private {struct afs_vlserver_list* vllist; } ;
struct afs_addr_list {size_t source; size_t status; int nr_addrs; int preferred; TYPE_1__* addrs; } ;
struct TYPE_2__ {int transport; } ;


 void* SEQ_START_TOKEN ;
 int ** dns_lookup_statuses ;
 char* dns_record_sources ;
 struct afs_addr_list* rcu_dereference (int ) ;
 int seq_printf (struct seq_file*,char*,char,int *,...) ;

__attribute__((used)) static int afs_proc_cell_vlservers_show(struct seq_file *m, void *v)
{
 const struct afs_vl_seq_net_private *priv = m->private;
 const struct afs_vlserver_list *vllist = priv->vllist;
 const struct afs_vlserver_entry *entry;
 const struct afs_vlserver *vlserver;
 const struct afs_addr_list *alist;
 int i;

 if (v == SEQ_START_TOKEN) {
  seq_printf(m, "# source %s, status %s\n",
      dns_record_sources[vllist ? vllist->source : 0],
      dns_lookup_statuses[vllist ? vllist->status : 0]);
  return 0;
 }

 entry = v;
 vlserver = entry->server;
 alist = rcu_dereference(vlserver->addresses);

 seq_printf(m, "%s [p=%hu w=%hu s=%s,%s]:\n",
     vlserver->name, entry->priority, entry->weight,
     dns_record_sources[alist ? alist->source : entry->source],
     dns_lookup_statuses[alist ? alist->status : entry->status]);
 if (alist) {
  for (i = 0; i < alist->nr_addrs; i++)
   seq_printf(m, " %c %pISpc\n",
       alist->preferred == i ? '>' : '-',
       &alist->addrs[i].transport);
 }
 return 0;
}
