; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_convert_reserved_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_convert_reserved_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_QGROUP_RSV_META_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_qgroup_convert_reserved_meta(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 1
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %5, align 8
  %9 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @is_fstree(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %2
  br label %37

22:                                               ; preds = %14
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BTRFS_QGROUP_RSV_META_PREALLOC, align 4
  %26 = call i32 @sub_root_meta_rsv(%struct.btrfs_root* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @trace_qgroup_meta_convert(%struct.btrfs_root* %27, i32 %28)
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @qgroup_convert_meta(%struct.btrfs_fs_info* %30, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @is_fstree(i32) #1

declare dso_local i32 @sub_root_meta_rsv(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @trace_qgroup_meta_convert(%struct.btrfs_root*, i32) #1

declare dso_local i32 @qgroup_convert_meta(%struct.btrfs_fs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
