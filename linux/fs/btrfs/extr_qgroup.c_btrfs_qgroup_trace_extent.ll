; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_trace_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_qgroup_extent_record = type { i32*, i64, i64 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_qgroup_extent_record*, align 8
  %12 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 1
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %10, align 8
  %17 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %4
  store i32 0, i32* %5, align 4
  br label %69

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.btrfs_qgroup_extent_record* @kzalloc(i32 24, i32 %30)
  store %struct.btrfs_qgroup_extent_record* %31, %struct.btrfs_qgroup_extent_record** %11, align 8
  %32 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %33 = icmp ne %struct.btrfs_qgroup_extent_record* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %69

37:                                               ; preds = %29
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %41, %struct.btrfs_delayed_ref_root** %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %44 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %47 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %49 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %12, align 8
  %51 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %50, i32 0, i32 0
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %54 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %12, align 8
  %55 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %56 = call i32 @btrfs_qgroup_trace_extent_nolock(%struct.btrfs_fs_info* %53, %struct.btrfs_delayed_ref_root* %54, %struct.btrfs_qgroup_extent_record* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %12, align 8
  %58 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %37
  %63 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %64 = call i32 @kfree(%struct.btrfs_qgroup_extent_record* %63)
  store i32 0, i32* %5, align 4
  br label %69

65:                                               ; preds = %37
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %67 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %68 = call i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info* %66, %struct.btrfs_qgroup_extent_record* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %62, %34, %28
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_qgroup_extent_record* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_qgroup_trace_extent_nolock(%struct.btrfs_fs_info*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_qgroup_extent_record*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.btrfs_qgroup_extent_record*) #1

declare dso_local i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info*, %struct.btrfs_qgroup_extent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
