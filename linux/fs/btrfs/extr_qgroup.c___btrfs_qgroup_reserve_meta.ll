; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_reserve_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c___btrfs_qgroup_reserve_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_qgroup_reserve_meta(%struct.btrfs_root* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 1
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %10, align 8
  %15 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @is_fstree(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %20, %4
  store i32 0, i32* %5, align 4
  br label %60

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @round_down(i32 %33, i32 %36)
  %38 = icmp ne i32 %32, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @trace_qgroup_meta_reserve(%struct.btrfs_root* %41, i32 %42, i32 %43)
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @qgroup_reserve(%struct.btrfs_root* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %31
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %31
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @add_root_meta_rsv(%struct.btrfs_root* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %52, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @is_fstree(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @trace_qgroup_meta_reserve(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @qgroup_reserve(%struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @add_root_meta_rsv(%struct.btrfs_root*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
