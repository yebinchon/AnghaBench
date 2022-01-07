
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct coda_file_info* private_data; } ;
struct coda_file_info {scalar_t__ cfi_magic; } ;


 int BUG_ON (int) ;
 scalar_t__ CODA_MAGIC ;

struct coda_file_info *coda_ftoc(struct file *file)
{
 struct coda_file_info *cfi = file->private_data;

 BUG_ON(!cfi || cfi->cfi_magic != CODA_MAGIC);

 return cfi;

}
