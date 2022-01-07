; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_split_delalloc_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_split_delalloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@BTRFS_MAX_EXTENT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_split_delalloc_extent(%struct.inode* %0, %struct.extent_state* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %11 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EXTENT_DELALLOC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %19 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %22 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BTRFS_MAX_EXTENT_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %17
  %30 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %31 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @count_max_extents(i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %40 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @count_max_extents(i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @count_max_extents(i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  br label %65

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %58)
  %60 = call i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__* %59, i32 1)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %53, %51, %16
  ret void
}

declare dso_local i64 @count_max_extents(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
