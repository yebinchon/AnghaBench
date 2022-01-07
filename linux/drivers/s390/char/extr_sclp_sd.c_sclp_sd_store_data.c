
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct sclp_sd_data {size_t esize_bytes; size_t dsize_bytes; void* data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int SD_EQ_HALT ;
 int SD_EQ_SIZE ;
 int SD_EQ_STORE_DATA ;
 unsigned long __get_free_page (int) ;
 int array_size (size_t,size_t) ;
 unsigned long base_asce_alloc (unsigned long,scalar_t__) ;
 int base_asce_free (unsigned long) ;
 int free_page (unsigned long) ;
 int sclp_sd_sync (unsigned long,int ,int ,unsigned long,int ,scalar_t__*,scalar_t__*) ;
 int vfree (void*) ;
 void* vzalloc (int ) ;

__attribute__((used)) static int sclp_sd_store_data(struct sclp_sd_data *result, u8 di)
{
 u32 dsize = 0, esize = 0;
 unsigned long page, asce = 0;
 void *data = ((void*)0);
 int rc;

 page = __get_free_page(GFP_KERNEL | GFP_DMA);
 if (!page)
  return -ENOMEM;


 rc = sclp_sd_sync(page, SD_EQ_SIZE, di, 0, 0, &dsize, &esize);
 if (rc)
  goto out;
 if (dsize == 0)
  goto out_result;


 data = vzalloc(array_size((size_t)dsize, PAGE_SIZE));
 if (!data) {
  rc = -ENOMEM;
  goto out;
 }


 asce = base_asce_alloc((unsigned long) data, dsize);
 if (!asce) {
  vfree(data);
  rc = -ENOMEM;
  goto out;
 }


 rc = sclp_sd_sync(page, SD_EQ_STORE_DATA, di, asce, (u64) data, &dsize,
     &esize);
 if (rc) {

  if (rc == -ERESTARTSYS)
   sclp_sd_sync(page, SD_EQ_HALT, di, 0, 0, ((void*)0), ((void*)0));
  vfree(data);
  goto out;
 }

out_result:
 result->esize_bytes = (size_t) esize * PAGE_SIZE;
 result->dsize_bytes = (size_t) dsize * PAGE_SIZE;
 result->data = data;

out:
 base_asce_free(asce);
 free_page(page);

 return rc;
}
