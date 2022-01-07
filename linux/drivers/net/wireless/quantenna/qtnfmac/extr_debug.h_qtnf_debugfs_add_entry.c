
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int dummy; } ;



__attribute__((used)) static inline void
qtnf_debugfs_add_entry(struct qtnf_bus *bus, const char *name,
         int (*fn)(struct seq_file *seq, void *data))
{
}
