
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmem_pagemap_cleanup (void*) ;

__attribute__((used)) static void pmem_release_queue(void *pgmap)
{
 pmem_pagemap_cleanup(pgmap);
}
