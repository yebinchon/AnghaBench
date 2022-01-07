
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_decompress_frontend {scalar_t__ headoffset; scalar_t__ backmost; } ;
typedef scalar_t__ erofs_off_t ;


 unsigned int EROFS_ZIP_CACHE_DISABLED ;
 unsigned int EROFS_ZIP_CACHE_READAROUND ;

__attribute__((used)) static bool should_alloc_managed_pages(struct z_erofs_decompress_frontend *fe,
           unsigned int cachestrategy,
           erofs_off_t la)
{
 if (cachestrategy <= EROFS_ZIP_CACHE_DISABLED)
  return 0;

 if (fe->backmost)
  return 1;

 return cachestrategy >= EROFS_ZIP_CACHE_READAROUND &&
  la < fe->headoffset;
}
