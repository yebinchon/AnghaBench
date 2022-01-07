; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_start_transaction_fallback_global_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_start_transaction_fallback_global_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32, i32* }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@TRANS_START = common dso_local global i32 0, align 4
@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction_fallback_global_rsv(%struct.btrfs_root* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %8, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TRANS_START, align 4
  %18 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %19 = call %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root* %15, i32 %16, i32 %17, i32 %18, i32 0)
  store %struct.btrfs_trans_handle* %19, %struct.btrfs_trans_handle** %9, align 8
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %21 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %24)
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %3
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_trans_handle* %30, %struct.btrfs_trans_handle** %4, align 8
  br label %71

31:                                               ; preds = %23
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %33 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %32, i32 0)
  store %struct.btrfs_trans_handle* %33, %struct.btrfs_trans_handle** %9, align 8
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %35 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_trans_handle* %38, %struct.btrfs_trans_handle** %4, align 8
  br label %71

39:                                               ; preds = %31
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 0
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @btrfs_cond_migrate_bytes(%struct.btrfs_fs_info* %43, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %53 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %52)
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %54)
  store %struct.btrfs_trans_handle* %55, %struct.btrfs_trans_handle** %4, align 8
  br label %71

56:                                               ; preds = %39
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %57, i32 0, i32 0
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %63 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %66 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 1)
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_trans_handle* %70, %struct.btrfs_trans_handle** %4, align 8
  br label %71

71:                                               ; preds = %56, %51, %37, %29
  %72 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  ret %struct.btrfs_trans_handle* %72
}

declare dso_local %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_cond_migrate_bytes(%struct.btrfs_fs_info*, i32*, i32, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @ERR_PTR(i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
