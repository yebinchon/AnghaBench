; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_check_system_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_check_system_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.btrfs_space_info = type { i64, i32 }

@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@ENOSPC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"left=%llu, need=%llu, flags=%llu\00", align 1
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_system_chunk(%struct.btrfs_trans_handle* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_space_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %12, i32 0, i32 1
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 2
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %19 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %20 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %18, i32 %19)
  store %struct.btrfs_space_info* %20, %struct.btrfs_space_info** %6, align 8
  %21 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %28 = call i64 @btrfs_space_info_used(%struct.btrfs_space_info* %27, i32 1)
  %29 = sub nsw i64 %26, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @get_profile_num_devs(%struct.btrfs_fs_info* %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info* %36, i64 %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %40 = call i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %39, i32 1)
  %41 = add nsw i64 %38, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %2
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %47 = load i32, i32* @ENOSPC_DEBUG, align 4
  %48 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @btrfs_info(%struct.btrfs_fs_info* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53, i64 %54)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %57 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %58 = call i32 @btrfs_dump_space_info(%struct.btrfs_fs_info* %56, %struct.btrfs_space_info* %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %50, %45, %2
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %65 = call i64 @btrfs_system_alloc_profile(%struct.btrfs_fs_info* %64)
  store i64 %65, i64* %11, align 8
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @btrfs_alloc_chunk(%struct.btrfs_trans_handle* %66, i64 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %69
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 0
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %80 = call i32 @btrfs_block_rsv_add(i32 %75, i32* %77, i64 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %72
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %86 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  br label %91

91:                                               ; preds = %83, %72
  br label %92

92:                                               ; preds = %91, %69
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_space_info_used(%struct.btrfs_space_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @get_profile_num_devs(%struct.btrfs_fs_info*, i64) #1

declare dso_local i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info*, i64) #1

declare dso_local i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i64, i64, i64) #1

declare dso_local i32 @btrfs_dump_space_info(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32, i32) #1

declare dso_local i64 @btrfs_system_alloc_profile(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_alloc_chunk(%struct.btrfs_trans_handle*, i64) #1

declare dso_local i32 @btrfs_block_rsv_add(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
