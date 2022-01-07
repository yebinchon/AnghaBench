
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct erofs_qstr {int * end; int * name; } ;
struct erofs_dirent {int nameoff; } ;


 int ENOENT ;
 struct erofs_dirent* ERR_PTR (int ) ;
 int erofs_dirnamecmp (struct erofs_qstr*,struct erofs_qstr*,unsigned int*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int nameoff_from_disk (int ,unsigned int) ;

__attribute__((used)) static struct erofs_dirent *find_target_dirent(struct erofs_qstr *name,
            u8 *data,
            unsigned int dirblksize,
            const int ndirents)
{
 int head, back;
 unsigned int startprfx, endprfx;
 struct erofs_dirent *const de = (struct erofs_dirent *)data;


 head = 1;
 back = ndirents - 1;
 startprfx = endprfx = 0;

 while (head <= back) {
  const int mid = head + (back - head) / 2;
  const int nameoff = nameoff_from_disk(de[mid].nameoff,
            dirblksize);
  unsigned int matched = min(startprfx, endprfx);
  struct erofs_qstr dname = {
   .name = data + nameoff,
   .end = mid >= ndirents - 1 ?
    data + dirblksize :
    data + nameoff_from_disk(de[mid + 1].nameoff,
        dirblksize)
  };


  int ret = erofs_dirnamecmp(name, &dname, &matched);

  if (!ret) {
   return de + mid;
  } else if (ret > 0) {
   head = mid + 1;
   startprfx = matched;
  } else {
   back = mid - 1;
   endprfx = matched;
  }
 }

 return ERR_PTR(-ENOENT);
}
