; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_block_can_be_shared.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_block_can_be_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, %struct.extent_buffer*, %struct.extent_buffer*, i32 }
%struct.extent_buffer = type { i32 }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_block_can_be_shared(%struct.btrfs_root* %0, %struct.extent_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %5, align 8
  %6 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 2
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %16 = icmp ne %struct.extent_buffer* %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 1
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %20, align 8
  %22 = icmp ne %struct.extent_buffer* %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %25 = call i64 @btrfs_header_generation(%struct.extent_buffer* %24)
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = call i64 @btrfs_root_last_snapshot(i32* %27)
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %32 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %33 = call i64 @btrfs_header_flag(%struct.extent_buffer* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %23
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %30, %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_root_last_snapshot(i32*) #1

declare dso_local i64 @btrfs_header_flag(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
