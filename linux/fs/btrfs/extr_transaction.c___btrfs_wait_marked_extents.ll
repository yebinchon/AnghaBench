; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c___btrfs_wait_marked_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c___btrfs_wait_marked_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }

@EXTENT_NEED_WAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_io_tree*)* @__btrfs_wait_marked_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_wait_marked_extents(%struct.btrfs_fs_info* %0, %struct.extent_io_tree* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.extent_io_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.extent_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.extent_io_tree* %1, %struct.extent_io_tree** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %7, align 8
  store %struct.extent_state* null, %struct.extent_state** %8, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %47, %2
  %17 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @EXTENT_NEED_WAIT, align 4
  %20 = call i32 @find_first_extent_bit(%struct.extent_io_tree* %17, i64 %18, i64* %9, i64* %10, i32 %19, %struct.extent_state** %8)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @EXTENT_NEED_WAIT, align 4
  %28 = call i32 @clear_extent_bit(%struct.extent_io_tree* %24, i64 %25, i64 %26, i32 %27, i32 0, i32 0, %struct.extent_state** %8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.address_space*, %struct.address_space** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @filemap_fdatawait_range(%struct.address_space* %38, i64 %39, i64 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %49 = call i32 @free_extent_state(%struct.extent_state* %48)
  store %struct.extent_state* null, %struct.extent_state** %8, align 8
  %50 = call i32 (...) @cond_resched()
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %16

53:                                               ; preds = %16
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @find_first_extent_bit(%struct.extent_io_tree*, i64, i64*, i64*, i32, %struct.extent_state**) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
