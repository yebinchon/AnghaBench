; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_check_ino_in_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_check_ino_in_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.fs_path = type { i32 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, i64, i64, i64, %struct.fs_path*)* @check_ino_in_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ino_in_path(%struct.btrfs_root* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.fs_path* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fs_path*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.fs_path* %5, %struct.fs_path** %13, align 8
  %18 = load i64, i64* %11, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %55

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %34 = call i32 @fs_path_reset(%struct.fs_path* %33)
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %38 = call i32 @get_first_ref(%struct.btrfs_root* %35, i64 %36, i64* %15, i64* %16, %struct.fs_path* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i64, i64* %15, align 8
  store i64 %53, i64* %14, align 8
  br label %28

54:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %47, %41, %22
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i32 @get_first_ref(%struct.btrfs_root*, i64, i64*, i64*, %struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
