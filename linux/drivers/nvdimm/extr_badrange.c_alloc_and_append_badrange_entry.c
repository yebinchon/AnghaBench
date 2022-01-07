
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badrange_entry {int dummy; } ;
struct badrange {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int append_badrange_entry (struct badrange*,struct badrange_entry*,int ,int ) ;
 struct badrange_entry* kzalloc (int,int ) ;

__attribute__((used)) static int alloc_and_append_badrange_entry(struct badrange *badrange,
  u64 addr, u64 length, gfp_t flags)
{
 struct badrange_entry *bre;

 bre = kzalloc(sizeof(*bre), flags);
 if (!bre)
  return -ENOMEM;

 append_badrange_entry(badrange, bre, addr, length);
 return 0;
}
