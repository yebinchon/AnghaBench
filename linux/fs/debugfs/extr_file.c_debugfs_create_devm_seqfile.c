
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct debugfs_devm_entry {int (* read ) (struct seq_file*,void*) ;struct device* dev; } ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IRUGO ;
 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,struct debugfs_devm_entry*,int *) ;
 int debugfs_devm_entry_ops ;
 struct debugfs_devm_entry* devm_kzalloc (struct device*,int,int ) ;

struct dentry *debugfs_create_devm_seqfile(struct device *dev, const char *name,
        struct dentry *parent,
        int (*read_fn)(struct seq_file *s,
         void *data))
{
 struct debugfs_devm_entry *entry;

 if (IS_ERR(parent))
  return ERR_PTR(-ENOENT);

 entry = devm_kzalloc(dev, sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return ERR_PTR(-ENOMEM);

 entry->read = read_fn;
 entry->dev = dev;

 return debugfs_create_file(name, S_IRUGO, parent, entry,
       &debugfs_devm_entry_ops);
}
