; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_merge_delalloc_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_merge_delalloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@BTRFS_MAX_EXTENT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_merge_delalloc_extent(%struct.inode* %0, %struct.extent_state* %1, %struct.extent_state* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca %struct.extent_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store %struct.extent_state* %2, %struct.extent_state** %6, align 8
  %10 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %11 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EXTENT_DELALLOC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %99

17:                                               ; preds = %3
  %18 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %19 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %22 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %27 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %30 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %43

34:                                               ; preds = %17
  %35 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %36 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %39 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @BTRFS_MAX_EXTENT_SIZE, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %52)
  %54 = call i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__* %53, i32 -1)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %99

59:                                               ; preds = %43
  %60 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %61 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %64 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @count_max_extents(i64 %68)
  store i64 %69, i64* %9, align 8
  %70 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %71 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %74 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @count_max_extents(i64 %78)
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @count_max_extents(i64 %82)
  %84 = load i64, i64* %9, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  br label %99

87:                                               ; preds = %59
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %92)
  %94 = call i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__* %93, i32 -1)
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %87, %86, %47, %16
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @count_max_extents(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
