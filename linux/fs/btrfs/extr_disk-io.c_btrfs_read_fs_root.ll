; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_read_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_key = type { i32 }

@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_root* @btrfs_read_fs_root(%struct.btrfs_root* %0, %struct.btrfs_key* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_key*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %5, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = load %struct.btrfs_key*, %struct.btrfs_key** %5, align 8
  %9 = call %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root* %7, %struct.btrfs_key* %8)
  store %struct.btrfs_root* %9, %struct.btrfs_root** %6, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %11 = call i64 @IS_ERR(%struct.btrfs_root* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 0
  %29 = call i32 @btrfs_check_and_init_root_item(i32* %28)
  br label %30

30:                                               ; preds = %22, %15
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %31, %struct.btrfs_root** %3, align 8
  br label %32

32:                                               ; preds = %30, %13
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  ret %struct.btrfs_root* %33
}

declare dso_local %struct.btrfs_root* @btrfs_read_tree_root(%struct.btrfs_root*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_check_and_init_root_item(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
