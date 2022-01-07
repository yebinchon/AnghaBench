; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i64, %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_root = type { i32 }

@U64_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %9)
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %7, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 2
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %8, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @trace_btrfs_sync_fs(%struct.btrfs_fs_info* %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @filemap_flush(i32 %24)
  store i32 0, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %28 = load i32, i32* @U64_MAX, align 4
  %29 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %27, i32 %28, i32 0, i32 -1)
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %31 = call %struct.btrfs_trans_handle* @btrfs_attach_transaction_barrier(%struct.btrfs_root* %30)
  store %struct.btrfs_trans_handle* %31, %struct.btrfs_trans_handle** %6, align 8
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %33 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %69

47:                                               ; preds = %41
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = call i64 @sb_start_write_trylock(%struct.super_block* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = call i32 @sb_end_write(%struct.super_block* %52)
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %69

55:                                               ; preds = %51
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %57 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %56, i32 0)
  store %struct.btrfs_trans_handle* %57, %struct.btrfs_trans_handle** %6, align 8
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %60 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %64 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %63)
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %68 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62, %54, %46, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @trace_btrfs_sync_fs(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i32, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_attach_transaction_barrier(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @sb_start_write_trylock(%struct.super_block*) #1

declare dso_local i32 @sb_end_write(%struct.super_block*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
