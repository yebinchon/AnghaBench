; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_check_dio_repairable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_check_dio_repairable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.io_failure_record = type { i32, i32, i32, i32 }
%struct.btrfs_fs_info = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"Check DIO Repairable: cannot repair, num_copies=%d, next_mirror %d, failed_mirror %d\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Check DIO Repairable: (fail) num_copies=%d, next_mirror %d, failed_mirror %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.bio*, %struct.io_failure_record*, i32)* @btrfs_check_dio_repairable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_check_dio_repairable(%struct.inode* %0, %struct.bio* %1, %struct.io_failure_record* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.io_failure_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store %struct.io_failure_record* %2, %struct.io_failure_record** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %14)
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %10, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %17 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %18 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %21 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %16, i32 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %30 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %27, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %32)
  store i32 0, i32* %5, align 4
  br label %67

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %37 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %39 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %43 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %49 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %54 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %62 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %59, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %67

66:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %58, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
