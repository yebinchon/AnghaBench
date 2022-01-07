
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_frag_tree_split {int frag; } ;


 int ceph_frag_compare (int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int frag_tree_split_cmp(const void *l, const void *r)
{
 struct ceph_frag_tree_split *ls = (struct ceph_frag_tree_split*)l;
 struct ceph_frag_tree_split *rs = (struct ceph_frag_tree_split*)r;
 return ceph_frag_compare(le32_to_cpu(ls->frag),
     le32_to_cpu(rs->frag));
}
