; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_dev_replace }
%struct.btrfs_dev_replace = type { i32, i32, i32, i32, i32, i32 }
%struct.btrfs_ioctl_dev_replace_args = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i32, i32 }

@BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_dev_replace_status(%struct.btrfs_fs_info* %0, %struct.btrfs_ioctl_dev_replace_args* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_ioctl_dev_replace_args*, align 8
  %5 = alloca %struct.btrfs_dev_replace*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_ioctl_dev_replace_args* %1, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 0
  store %struct.btrfs_dev_replace* %7, %struct.btrfs_dev_replace** %5, align 8
  %8 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %8, i32 0, i32 0
  %10 = call i32 @down_read(i32* %9)
  %11 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR, align 4
  %12 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 8
  %20 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %32, i32 0, i32 2
  %34 = call i8* @atomic64_read(i32* %33)
  %35 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %39 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %38, i32 0, i32 1
  %40 = call i8* @atomic64_read(i32* %39)
  %41 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %45 = call i32 @btrfs_dev_replace_progress(%struct.btrfs_fs_info* %44)
  %46 = load %struct.btrfs_ioctl_dev_replace_args*, %struct.btrfs_ioctl_dev_replace_args** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, %struct.btrfs_ioctl_dev_replace_args* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @atomic64_read(i32*) #1

declare dso_local i32 @btrfs_dev_replace_progress(%struct.btrfs_fs_info*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
