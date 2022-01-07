; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_should_cow_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_should_cow_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32 }

@BTRFS_HEADER_FLAG_WRITTEN = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4
@BTRFS_ROOT_FORCE_COW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*)* @should_cow_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_cow_block(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %7, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @btrfs_is_testing(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = call i32 (...) @smp_mb__before_atomic()
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %17 = call i64 @btrfs_header_generation(%struct.extent_buffer* %16)
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %24 = load i32, i32* @BTRFS_HEADER_FLAG_WRITTEN, align 4
  %25 = call i64 @btrfs_header_flag(%struct.extent_buffer* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTRFS_TREE_RELOC_OBJECTID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %36 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %37 = call i64 @btrfs_header_flag(%struct.extent_buffer* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @BTRFS_ROOT_FORCE_COW, align 4
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %47

46:                                               ; preds = %39, %34, %22, %14
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @btrfs_is_testing(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_header_flag(%struct.extent_buffer*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
