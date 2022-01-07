; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_set_create_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_set_create_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.p9_fid = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_set_create_acl(%struct.inode* %0, %struct.p9_fid* %1, %struct.posix_acl* %2, %struct.posix_acl* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %6, align 8
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %3, %struct.posix_acl** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %11 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %12 = call i32 @set_cached_acl(%struct.inode* %9, i32 %10, %struct.posix_acl* %11)
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %15 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %16 = call i32 @set_cached_acl(%struct.inode* %13, i32 %14, %struct.posix_acl* %15)
  %17 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %18 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %19 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %20 = call i32 @v9fs_set_acl(%struct.p9_fid* %17, i32 %18, %struct.posix_acl* %19)
  %21 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %22 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %23 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %24 = call i32 @v9fs_set_acl(%struct.p9_fid* %21, i32 %22, %struct.posix_acl* %23)
  ret i32 0
}

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @v9fs_set_acl(%struct.p9_fid*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
