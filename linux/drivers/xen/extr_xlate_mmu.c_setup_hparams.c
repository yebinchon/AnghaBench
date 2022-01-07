
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remap_data {size_t h_iter; unsigned long* h_gpfns; int * fgfn; scalar_t__* h_errs; int * h_idxs; } ;



__attribute__((used)) static void setup_hparams(unsigned long gfn, void *data)
{
 struct remap_data *info = data;

 info->h_idxs[info->h_iter] = *info->fgfn;
 info->h_gpfns[info->h_iter] = gfn;
 info->h_errs[info->h_iter] = 0;

 info->h_iter++;
 info->fgfn++;
}
