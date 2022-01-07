; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_lock_and_flush_ordered_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_lock_and_flush_ordered_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32 }
%struct.btrfs_inode = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_lock_and_flush_ordered_range(%struct.extent_io_tree* %0, %struct.btrfs_inode* %1, i64 %2, i64 %3, %struct.extent_state** %4) #0 {
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.extent_state**, align 8
  %11 = alloca %struct.btrfs_ordered_extent*, align 8
  %12 = alloca %struct.extent_state*, align 8
  %13 = alloca %struct.extent_state**, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.extent_state** %4, %struct.extent_state*** %10, align 8
  store %struct.extent_state* null, %struct.extent_state** %12, align 8
  store %struct.extent_state** %12, %struct.extent_state*** %13, align 8
  %14 = load %struct.extent_state**, %struct.extent_state*** %10, align 8
  %15 = icmp ne %struct.extent_state** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.extent_state**, %struct.extent_state*** %10, align 8
  store %struct.extent_state** %17, %struct.extent_state*** %13, align 8
  br label %18

18:                                               ; preds = %16, %5
  br label %19

19:                                               ; preds = %18, %42
  %20 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.extent_state**, %struct.extent_state*** %13, align 8
  %24 = call i32 @lock_extent_bits(%struct.extent_io_tree* %20, i64 %21, i64 %22, %struct.extent_state** %23)
  %25 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub nsw i64 %27, %28
  %30 = add nsw i64 %29, 1
  %31 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.btrfs_inode* %25, i64 %26, i64 %30)
  store %struct.btrfs_ordered_extent* %31, %struct.btrfs_ordered_extent** %11, align 8
  %32 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %33 = icmp ne %struct.btrfs_ordered_extent* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %19
  %35 = load %struct.extent_state**, %struct.extent_state*** %10, align 8
  %36 = icmp ne %struct.extent_state** %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.extent_state*, %struct.extent_state** %12, align 8
  %39 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %38, i32 0, i32 0
  %40 = call i32 @refcount_dec(i32* %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %54

42:                                               ; preds = %19
  %43 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.extent_state**, %struct.extent_state*** %13, align 8
  %47 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %43, i64 %44, i64 %45, %struct.extent_state** %46)
  %48 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %49 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %48, i32 0, i32 0
  %50 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %51 = call i32 @btrfs_start_ordered_extent(i32* %49, %struct.btrfs_ordered_extent* %50, i32 1)
  %52 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %53 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %52)
  br label %19

54:                                               ; preds = %41
  ret void
}

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.btrfs_inode*, i64, i64) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local i32 @btrfs_start_ordered_extent(i32*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
