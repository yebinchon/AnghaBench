; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_by_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_by_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_ioctl_dev_replace_args = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_dev_replace_by_ioctl(%struct.btrfs_fs_info* %0, %struct.btrfs_ioctl_dev_replace_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_ioctl_dev_replace_args*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_ioctl_dev_replace_args* %1, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %7 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %8 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %2, %2
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %11
  %16 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %21, %15
  %31 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30, %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %30
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %44 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @btrfs_dev_replace_start(%struct.btrfs_fs_info* %43, i8* %47, i64 %51, i8* %55, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %5, align 8
  %63 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %42
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %42
  store i32 0, i32* %3, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %71, %39, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @btrfs_dev_replace_start(%struct.btrfs_fs_info*, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
