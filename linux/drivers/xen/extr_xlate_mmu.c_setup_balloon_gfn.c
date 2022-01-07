
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_balloon_pages {unsigned long* pfns; int idx; } ;



__attribute__((used)) static void setup_balloon_gfn(unsigned long gfn, void *data)
{
 struct map_balloon_pages *info = data;

 info->pfns[info->idx++] = gfn;
}
