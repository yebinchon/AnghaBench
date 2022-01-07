
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct file {struct afs_file* private_data; } ;
struct afs_file {struct key* key; } ;



__attribute__((used)) static inline struct key *afs_file_key(struct file *file)
{
 struct afs_file *af = file->private_data;

 return af->key;
}
