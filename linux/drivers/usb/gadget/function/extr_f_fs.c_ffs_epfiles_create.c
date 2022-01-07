
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_epfile {int dentry; int name; int mutex; struct ffs_data* ffs; } ;
struct ffs_data {unsigned int eps_count; int user_flags; unsigned int* eps_addrmap; struct ffs_epfile* epfiles; int sb; } ;


 int ENOMEM ;
 int ENTER () ;
 int FUNCTIONFS_VIRTUAL_ADDR ;
 int GFP_KERNEL ;
 int ffs_epfile_operations ;
 int ffs_epfiles_destroy (struct ffs_epfile*,unsigned int) ;
 int ffs_sb_create_file (int ,int ,struct ffs_epfile*,int *) ;
 struct ffs_epfile* kcalloc (unsigned int,int,int ) ;
 int mutex_init (int *) ;
 int sprintf (int ,char*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ffs_epfiles_create(struct ffs_data *ffs)
{
 struct ffs_epfile *epfile, *epfiles;
 unsigned i, count;

 ENTER();

 count = ffs->eps_count;
 epfiles = kcalloc(count, sizeof(*epfiles), GFP_KERNEL);
 if (!epfiles)
  return -ENOMEM;

 epfile = epfiles;
 for (i = 1; i <= count; ++i, ++epfile) {
  epfile->ffs = ffs;
  mutex_init(&epfile->mutex);
  if (ffs->user_flags & FUNCTIONFS_VIRTUAL_ADDR)
   sprintf(epfile->name, "ep%02x", ffs->eps_addrmap[i]);
  else
   sprintf(epfile->name, "ep%u", i);
  epfile->dentry = ffs_sb_create_file(ffs->sb, epfile->name,
       epfile,
       &ffs_epfile_operations);
  if (unlikely(!epfile->dentry)) {
   ffs_epfiles_destroy(epfiles, i - 1);
   return -ENOMEM;
  }
 }

 ffs->epfiles = epfiles;
 return 0;
}
