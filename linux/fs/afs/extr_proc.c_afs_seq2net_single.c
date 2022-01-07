
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct afs_net {int dummy; } ;


 struct afs_net* afs_net (int ) ;
 int seq_file_single_net (struct seq_file*) ;

__attribute__((used)) static inline struct afs_net *afs_seq2net_single(struct seq_file *m)
{
 return afs_net(seq_file_single_net(m));
}
