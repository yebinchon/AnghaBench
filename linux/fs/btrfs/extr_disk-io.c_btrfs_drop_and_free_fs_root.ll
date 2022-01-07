; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_drop_and_free_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_drop_and_free_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32 }
%struct.btrfs_root = type { i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_drop_and_free_fs_root(%struct.btrfs_fs_info* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 3
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @radix_tree_delete(i32* %9, i64 %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 3
  %20 = call i64 @btrfs_root_refs(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 1
  %25 = call i32 @synchronize_srcu(i32* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %34 = call i32 @btrfs_free_log(i32* null, %struct.btrfs_root* %33)
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free_extent_buffer(i32 %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @free_extent_buffer(i32 %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @btrfs_put_fs_root(%struct.TYPE_4__* %54)
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %57, align 8
  br label %58

58:                                               ; preds = %39, %32
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %66 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @__btrfs_remove_free_space_cache(i64 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @__btrfs_remove_free_space_cache(i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %81 = call i32 @btrfs_free_fs_root(%struct.btrfs_root* %80)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_free_log(i32*, %struct.btrfs_root*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @btrfs_put_fs_root(%struct.TYPE_4__*) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(i64) #1

declare dso_local i32 @btrfs_free_fs_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
