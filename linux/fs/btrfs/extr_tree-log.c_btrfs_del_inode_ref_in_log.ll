; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_del_inode_ref_in_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_del_inode_ref_in_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_root* }
%struct.btrfs_inode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_inode_ref_in_log(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, %struct.btrfs_inode* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.btrfs_inode* %4, %struct.btrfs_inode** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %19 = call i32 @inode_logged(%struct.btrfs_trans_handle* %17, %struct.btrfs_inode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %70

22:                                               ; preds = %6
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %24 = call i32 @join_running_log_trans(%struct.btrfs_root* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %70

28:                                               ; preds = %22
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %30, align 8
  store %struct.btrfs_root* %31, %struct.btrfs_root** %14, align 8
  %32 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %33 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %40 = call i32 @btrfs_ino(%struct.btrfs_inode* %39)
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle* %35, %struct.btrfs_root* %36, i8* %37, i32 %38, i32 %40, i32 %41, i32* %15)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %44 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %52 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %51)
  store i32 0, i32* %16, align 4
  br label %66

53:                                               ; preds = %28
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %56, %53
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %68 = call i32 @btrfs_end_log_trans(%struct.btrfs_root* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %27, %21
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @inode_logged(%struct.btrfs_trans_handle*, %struct.btrfs_inode*) #1

declare dso_local i32 @join_running_log_trans(%struct.btrfs_root*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_log_trans(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
