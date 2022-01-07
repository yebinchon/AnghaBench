; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_insert_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_insert_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_ROOT_IN_RADIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_fs_root(%struct.btrfs_fs_info* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call i32 @radix_tree_preload(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %24 = call i32 @radix_tree_insert(i32* %18, i64 %22, %struct.btrfs_root* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load i32, i32* @BTRFS_ROOT_IN_RADIX, align 4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %13
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = call i32 (...) @radix_tree_preload_end()
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.btrfs_root*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
