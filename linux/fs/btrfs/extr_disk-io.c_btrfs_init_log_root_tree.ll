; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_log_root_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_log_root_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_log_root_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %5, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %9 = call %struct.btrfs_root* @alloc_log_tree(%struct.btrfs_trans_handle* %7, %struct.btrfs_fs_info* %8)
  store %struct.btrfs_root* %9, %struct.btrfs_root** %6, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %11 = call i64 @IS_ERR(%struct.btrfs_root* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.btrfs_root* %14)
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %20 = call i32 @WARN_ON(%struct.btrfs_root* %19)
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 0
  store %struct.btrfs_root* %21, %struct.btrfs_root** %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.btrfs_root* @alloc_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @WARN_ON(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
