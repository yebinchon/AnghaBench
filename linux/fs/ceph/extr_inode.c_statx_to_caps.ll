; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_statx_to_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_statx_to_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATX_MODE = common dso_local global i32 0, align 4
@STATX_UID = common dso_local global i32 0, align 4
@STATX_GID = common dso_local global i32 0, align 4
@STATX_CTIME = common dso_local global i32 0, align 4
@STATX_BTIME = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_SHARED = common dso_local global i32 0, align 4
@STATX_NLINK = common dso_local global i32 0, align 4
@CEPH_CAP_LINK_SHARED = common dso_local global i32 0, align 4
@STATX_ATIME = common dso_local global i32 0, align 4
@STATX_MTIME = common dso_local global i32 0, align 4
@STATX_SIZE = common dso_local global i32 0, align 4
@STATX_BLOCKS = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @statx_to_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statx_to_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @STATX_MODE, align 4
  %6 = load i32, i32* @STATX_UID, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @STATX_GID, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STATX_CTIME, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @STATX_BTIME, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %4, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @STATX_NLINK, align 4
  %23 = load i32, i32* @STATX_CTIME, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @CEPH_CAP_LINK_SHARED, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @STATX_ATIME, align 4
  %34 = load i32, i32* @STATX_MTIME, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STATX_CTIME, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STATX_SIZE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @STATX_BLOCKS, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %32, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %31
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @STATX_CTIME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
