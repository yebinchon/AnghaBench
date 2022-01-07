; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_reserve_metadata_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_reserve_metadata_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_root*, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ORPHAN_CLEANUP_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"space_info:enospc\00", align 1
@ENOSPC_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_reserve_metadata_bytes(%struct.btrfs_root* %0, %struct.btrfs_block_rsv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_block_rsv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 1
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %9, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 1
  store %struct.btrfs_block_rsv* %17, %struct.btrfs_block_rsv** %10, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  %22 = icmp eq %struct.btrfs_root* %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %25 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @__reserve_metadata_bytes(%struct.btrfs_fs_info* %24, %struct.TYPE_3__* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %4
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ORPHAN_CLEANUP_STARTED, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %47 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %48 = icmp ne %struct.btrfs_block_rsv* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @btrfs_block_rsv_use_bytes(%struct.btrfs_block_rsv* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %49, %45
  br label %56

56:                                               ; preds = %55, %36, %4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %63 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 1)
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %71 = load i32, i32* @ENOSPC_DEBUG, align 4
  %72 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %76 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @btrfs_dump_space_info(%struct.btrfs_fs_info* %75, %struct.TYPE_3__* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %74, %61
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @__reserve_metadata_bytes(%struct.btrfs_fs_info*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_block_rsv_use_bytes(%struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_dump_space_info(%struct.btrfs_fs_info*, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
