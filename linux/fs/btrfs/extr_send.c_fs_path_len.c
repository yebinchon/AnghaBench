
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int end; int start; } ;



__attribute__((used)) static int fs_path_len(struct fs_path *p)
{
 return p->end - p->start;
}
