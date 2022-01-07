
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ windowLog; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
typedef TYPE_2__ ZSTD_parameters ;


 int WARN_ON (int) ;
 size_t ZSTD_BTRFS_MAX_INPUT ;
 scalar_t__ ZSTD_BTRFS_MAX_WINDOWLOG ;
 TYPE_2__ ZSTD_getParams (unsigned int,size_t,int ) ;

__attribute__((used)) static ZSTD_parameters zstd_get_btrfs_parameters(unsigned int level,
       size_t src_len)
{
 ZSTD_parameters params = ZSTD_getParams(level, src_len, 0);

 if (params.cParams.windowLog > ZSTD_BTRFS_MAX_WINDOWLOG)
  params.cParams.windowLog = ZSTD_BTRFS_MAX_WINDOWLOG;
 WARN_ON(src_len > ZSTD_BTRFS_MAX_INPUT);
 return params;
}
