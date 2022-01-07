; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_free_dummy_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_free_dummy_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i32 }

@BTRFS_ROOT_IN_RADIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_free_dummy_root(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %3 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %4 = icmp ne %struct.btrfs_root* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load i32, i32* @BTRFS_ROOT_IN_RADIX, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 1
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %27

14:                                               ; preds = %6
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @free_extent_buffer(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %26 = call i32 @kfree(%struct.btrfs_root* %25)
  br label %27

27:                                               ; preds = %24, %13, %5
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @free_extent_buffer(i64) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
