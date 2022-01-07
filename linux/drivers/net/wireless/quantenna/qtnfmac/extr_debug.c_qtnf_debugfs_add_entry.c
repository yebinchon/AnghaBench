
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int dbg_dir; int dev; } ;


 int debugfs_create_devm_seqfile (int ,char const*,int ,int (*) (struct seq_file*,void*)) ;

void qtnf_debugfs_add_entry(struct qtnf_bus *bus, const char *name,
       int (*fn)(struct seq_file *seq, void *data))
{
 debugfs_create_devm_seqfile(bus->dev, name, bus->dbg_dir, fn);
}
