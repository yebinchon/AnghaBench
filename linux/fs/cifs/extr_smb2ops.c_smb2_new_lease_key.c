
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_fid {int lease_key; } ;


 int generate_random_uuid (int ) ;

__attribute__((used)) static void
smb2_new_lease_key(struct cifs_fid *fid)
{
 generate_random_uuid(fid->lease_key);
}
