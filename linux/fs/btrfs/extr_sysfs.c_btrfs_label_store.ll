; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_label_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_label_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BTRFS_LABEL_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @btrfs_label_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_label_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.kobject*, %struct.kobject** %6, align 8
  %13 = call %struct.btrfs_fs_info* @to_fs_info(%struct.kobject* %12)
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %10, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %15 = icmp ne %struct.btrfs_fs_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EPERM, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %67

19:                                               ; preds = %4
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @sb_rdonly(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* @EROFS, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %67

28:                                               ; preds = %19
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strcspn(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @BTRFS_LABEL_SIZE, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %67

37:                                               ; preds = %28
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @BTRFS_LABEL_SIZE, align 8
  %47 = call i32 @memset(i32 %45, i32 0, i64 %46)
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i32 %52, i8* %53, i64 %54)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %60 = load i32, i32* @COMMIT, align 4
  %61 = call i32 @btrfs_set_pending(%struct.btrfs_fs_info* %59, i32 %60)
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %63 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @wake_up_process(i32 %64)
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %37, %34, %25, %16
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local %struct.btrfs_fs_info* @to_fs_info(%struct.kobject*) #1

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_set_pending(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
