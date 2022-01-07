; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_refs_rsv_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_refs_rsv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"delayed_refs_rsv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_delayed_refs_rsv_release(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  store %struct.btrfs_block_rsv* %9, %struct.btrfs_block_rsv** %5, align 8
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %14 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @__btrfs_block_rsv_release(%struct.btrfs_fs_info* %13, %struct.btrfs_block_rsv* %14, i64 %15, i32* null)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i64 %21, i32 0)
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

declare dso_local i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @__btrfs_block_rsv_release(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i64, i32*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
