; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_record_unlink_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_record_unlink_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_inode = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_record_unlink_dir(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.btrfs_inode* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_inode*, align 8
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %6, align 8
  store %struct.btrfs_inode* %2, %struct.btrfs_inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %10 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %17, i32 0, i32 2
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %54

28:                                               ; preds = %4
  %29 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %54

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37
  br label %54

42:                                               ; preds = %40
  %43 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %42, %41, %36, %27
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
