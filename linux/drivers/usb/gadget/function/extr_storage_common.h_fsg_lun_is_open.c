
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int * filp; } ;



__attribute__((used)) static inline bool fsg_lun_is_open(struct fsg_lun *curlun)
{
 return curlun->filp != ((void*)0);
}
