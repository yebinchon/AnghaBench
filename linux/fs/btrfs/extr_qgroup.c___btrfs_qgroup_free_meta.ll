; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_free_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_free_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__btrfs_qgroup_free_meta(%struct.btrfs_root* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 1
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %7, align 8
  %11 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @is_fstree(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %3
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sub_root_meta_rsv(%struct.btrfs_root* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @round_down(i32 %30, i32 %33)
  %35 = icmp ne i32 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @trace_qgroup_meta_reserve(%struct.btrfs_root* %38, i32 %40, i32 %41)
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @btrfs_qgroup_free_refroot(%struct.btrfs_fs_info* %43, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @is_fstree(i32) #1

declare dso_local i32 @sub_root_meta_rsv(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @trace_qgroup_meta_reserve(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_free_refroot(%struct.btrfs_fs_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
