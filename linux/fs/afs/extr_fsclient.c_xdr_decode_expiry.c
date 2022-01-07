
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ time64_t ;
struct afs_call {int reply_time; } ;


 int NSEC_PER_SEC ;
 scalar_t__ ktime_divns (int ,int ) ;

__attribute__((used)) static time64_t xdr_decode_expiry(struct afs_call *call, u32 expiry)
{
 return ktime_divns(call->reply_time, NSEC_PER_SEC) + expiry;
}
