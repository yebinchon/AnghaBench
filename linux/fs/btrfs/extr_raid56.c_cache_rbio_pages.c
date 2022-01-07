
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int nr_pages; int flags; int * stripe_pages; int * bio_pages; } ;


 int RBIO_CACHE_READY_BIT ;
 int SetPageUptodate (int ) ;
 int alloc_rbio_pages (struct btrfs_raid_bio*) ;
 int copy_page (char*,char*) ;
 char* kmap (int ) ;
 int kunmap (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void cache_rbio_pages(struct btrfs_raid_bio *rbio)
{
 int i;
 char *s;
 char *d;
 int ret;

 ret = alloc_rbio_pages(rbio);
 if (ret)
  return;

 for (i = 0; i < rbio->nr_pages; i++) {
  if (!rbio->bio_pages[i])
   continue;

  s = kmap(rbio->bio_pages[i]);
  d = kmap(rbio->stripe_pages[i]);

  copy_page(d, s);

  kunmap(rbio->bio_pages[i]);
  kunmap(rbio->stripe_pages[i]);
  SetPageUptodate(rbio->stripe_pages[i]);
 }
 set_bit(RBIO_CACHE_READY_BIT, &rbio->flags);
}
