
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct da9150_fg {int dummy; } ;


 int da9150_fg_read_attr (struct da9150_fg*,int ,int ) ;
 int da9150_fg_read_sync_end (struct da9150_fg*) ;
 int da9150_fg_read_sync_start (struct da9150_fg*) ;

__attribute__((used)) static u32 da9150_fg_read_attr_sync(struct da9150_fg *fg, u8 code, u8 size)
{
 u32 val;

 da9150_fg_read_sync_start(fg);
 val = da9150_fg_read_attr(fg, code, size);
 da9150_fg_read_sync_end(fg);

 return val;
}
