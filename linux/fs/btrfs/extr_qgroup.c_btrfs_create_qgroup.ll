; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_create_qgroup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_create_qgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_qgroup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_create_qgroup(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_qgroup*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 2
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %6, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = icmp ne %struct.btrfs_root* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.btrfs_qgroup* @find_qgroup_rb(%struct.btrfs_fs_info* %24, i32 %25)
  store %struct.btrfs_qgroup* %26, %struct.btrfs_qgroup** %7, align 8
  %27 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %7, align 8
  %28 = icmp ne %struct.btrfs_qgroup* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @add_qgroup_item(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %57

40:                                               ; preds = %32
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.btrfs_qgroup* @add_qgroup_rb(%struct.btrfs_fs_info* %44, i32 %45)
  store %struct.btrfs_qgroup* %46, %struct.btrfs_qgroup** %7, align 8
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %7, align 8
  %51 = call i64 @IS_ERR(%struct.btrfs_qgroup* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.btrfs_qgroup* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %40
  br label %57

57:                                               ; preds = %56, %39, %29, %20
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_qgroup* @find_qgroup_rb(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @add_qgroup_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_qgroup* @add_qgroup_rb(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_qgroup*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_qgroup*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
