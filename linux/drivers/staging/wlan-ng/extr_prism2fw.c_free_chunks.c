
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgchunk {int data; } ;


 int kfree (int ) ;
 int memset (struct imgchunk*,int ,int) ;

__attribute__((used)) static void free_chunks(struct imgchunk *fchunk, unsigned int *nfchunks)
{
 int i;

 for (i = 0; i < *nfchunks; i++)
  kfree(fchunk[i].data);

 *nfchunks = 0;
 memset(fchunk, 0, sizeof(*fchunk));
}
