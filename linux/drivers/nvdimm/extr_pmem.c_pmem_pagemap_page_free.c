
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _refcount; } ;


 int wake_up_var (int *) ;

__attribute__((used)) static void pmem_pagemap_page_free(struct page *page)
{
 wake_up_var(&page->_refcount);
}
