
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XATTR_CEPH_PREFIX ;
 int XATTR_CEPH_PREFIX_LEN ;
 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int XATTR_USER_PREFIX ;
 int XATTR_USER_PREFIX_LEN ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static bool ceph_is_valid_xattr(const char *name)
{
 return !strncmp(name, XATTR_SECURITY_PREFIX, XATTR_SECURITY_PREFIX_LEN) ||
        !strncmp(name, XATTR_CEPH_PREFIX, XATTR_CEPH_PREFIX_LEN) ||
        !strncmp(name, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN) ||
        !strncmp(name, XATTR_USER_PREFIX, XATTR_USER_PREFIX_LEN);
}
