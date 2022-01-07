; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_remount_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_remount_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i64, i32, i32, i32 }

@AUTO_DEFRAG = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i64, i32)* @btrfs_remount_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_remount_begin(%struct.btrfs_fs_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @AUTO_DEFRAG, align 4
  %9 = call i64 @btrfs_raw_test_opt(i64 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @AUTO_DEFRAG, align 4
  %16 = call i64 @btrfs_raw_test_opt(i64 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SB_RDONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18, %11
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_event(i32 %26, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SB_RDONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sync_filesystem(i32 %40)
  br label %42

42:                                               ; preds = %37, %23
  br label %43

43:                                               ; preds = %42, %18, %3
  ret void
}

declare dso_local i64 @btrfs_raw_test_opt(i64, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sync_filesystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
