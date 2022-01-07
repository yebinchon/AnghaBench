; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_find_newest_super_backup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_find_newest_super_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root_backup* }
%struct.btrfs_root_backup = type { i32 }

@BTRFS_NUM_BACKUP_ROOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i64)* @find_newest_super_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_newest_super_backup(%struct.btrfs_fs_info* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root_backup*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.btrfs_root_backup, %struct.btrfs_root_backup* %18, i64 %20
  store %struct.btrfs_root_backup* %21, %struct.btrfs_root_backup** %7, align 8
  %22 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %7, align 8
  %23 = call i64 @btrfs_backup_tree_root_gen(%struct.btrfs_root_backup* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %42, align 8
  store %struct.btrfs_root_backup* %43, %struct.btrfs_root_backup** %7, align 8
  %44 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %7, align 8
  %45 = call i64 @btrfs_backup_tree_root_gen(%struct.btrfs_root_backup* %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @btrfs_backup_tree_root_gen(%struct.btrfs_root_backup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
