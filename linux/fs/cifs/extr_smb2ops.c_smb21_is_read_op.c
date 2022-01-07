
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int SMB2_LEASE_READ_CACHING_HE ;
 int SMB2_LEASE_WRITE_CACHING_HE ;

__attribute__((used)) static bool
smb21_is_read_op(__u32 oplock)
{
 return (oplock & SMB2_LEASE_READ_CACHING_HE) &&
        !(oplock & SMB2_LEASE_WRITE_CACHING_HE);
}
