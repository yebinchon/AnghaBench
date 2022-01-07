; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_refs_rsv_refill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_refs_rsv_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"delayed_refs_rsv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_refs_rsv_refill(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 1
  store %struct.btrfs_block_rsv* %11, %struct.btrfs_block_rsv** %6, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = call i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %12, i32 1)
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @min(i64 %34, i64 %35)
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %63

44:                                               ; preds = %37
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @btrfs_reserve_metadata_bytes(i32 %47, %struct.btrfs_block_rsv* %48, i64 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv* %57, i64 %58, i32 0)
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i64 %61, i32 1)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %54, %43
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_reserve_metadata_bytes(i32, %struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @btrfs_block_rsv_add_bytes(%struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
