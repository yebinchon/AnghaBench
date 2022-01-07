
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dns_server_list_v1_address {int address_type; } ;
struct afs_addr_list {scalar_t__ nr_ipv4; scalar_t__ nr_addrs; scalar_t__ preferred; } ;
typedef int __be32 ;




 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 struct afs_addr_list* ERR_PTR (int) ;
 int VL_SERVICE ;
 int _leave (char*,...) ;
 struct afs_addr_list* afs_alloc_addrlist (int,int ,int ) ;
 int afs_merge_fs_addr4 (struct afs_addr_list*,int ,int ) ;
 int afs_merge_fs_addr6 (struct afs_addr_list*,int *,int ) ;
 int afs_put_addrlist (struct afs_addr_list*) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static struct afs_addr_list *afs_extract_vl_addrs(const u8 **_b, const u8 *end,
        u8 nr_addrs, u16 port)
{
 struct afs_addr_list *alist;
 const u8 *b = *_b;
 int ret = -EINVAL;

 alist = afs_alloc_addrlist(nr_addrs, VL_SERVICE, port);
 if (!alist)
  return ERR_PTR(-ENOMEM);
 if (nr_addrs == 0)
  return alist;

 for (; nr_addrs > 0 && end - b >= nr_addrs; nr_addrs--) {
  struct dns_server_list_v1_address hdr;
  __be32 x[4];

  hdr.address_type = *b++;

  switch (hdr.address_type) {
  case 129:
   if (end - b < 4) {
    _leave(" = -EINVAL [short inet]");
    goto error;
   }
   memcpy(x, b, 4);
   afs_merge_fs_addr4(alist, x[0], port);
   b += 4;
   break;

  case 128:
   if (end - b < 16) {
    _leave(" = -EINVAL [short inet6]");
    goto error;
   }
   memcpy(x, b, 16);
   afs_merge_fs_addr6(alist, x, port);
   b += 16;
   break;

  default:
   _leave(" = -EADDRNOTAVAIL [unknown af %u]",
          hdr.address_type);
   ret = -EADDRNOTAVAIL;
   goto error;
  }
 }


 if (alist->nr_ipv4 < alist->nr_addrs)
  alist->preferred = alist->nr_ipv4;

 *_b = b;
 return alist;

error:
 *_b = b;
 afs_put_addrlist(alist);
 return ERR_PTR(ret);
}
