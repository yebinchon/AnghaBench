; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.v9fs_session_info = type { i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_CLIENT = common dso_local global i32 0, align 4
@V9FS_ACL_MASK = common dso_local global i32 0, align 4
@V9FS_POSIX_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @v9fs_iop_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %7)
  store %struct.v9fs_session_info* %8, %struct.v9fs_session_info** %6, align 8
  %9 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %10 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @V9FS_ACCESS_CLIENT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %18 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V9FS_ACL_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @V9FS_POSIX_ACL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode* %26, i32 %27)
  store %struct.posix_acl* %28, %struct.posix_acl** %3, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %30
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
