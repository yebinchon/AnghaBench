
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {struct page* page; } ;
struct page {int dummy; } ;


 int VM_FAULT_LOCKED ;
 int lock_page (struct page*) ;

__attribute__((used)) static vm_fault_t
cifs_page_mkwrite(struct vm_fault *vmf)
{
 struct page *page = vmf->page;

 lock_page(page);
 return VM_FAULT_LOCKED;
}
