; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.c_alloc_fs_devices.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.c_alloc_fs_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_devices = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_fs_devices* (i32*, i32*)* @alloc_fs_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_fs_devices* @alloc_fs_devices(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.btrfs_fs_devices*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btrfs_fs_devices*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.btrfs_fs_devices* @kzalloc(i32 24, i32 %7)
  store %struct.btrfs_fs_devices* %8, %struct.btrfs_fs_devices** %6, align 8
  %9 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %10 = icmp ne %struct.btrfs_fs_devices* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.btrfs_fs_devices* @ERR_PTR(i32 %13)
  store %struct.btrfs_fs_devices* %14, %struct.btrfs_fs_devices** %3, align 8
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %16, i32 0, i32 5
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %15
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %46 = call i32 @memcpy(i32 %43, i32* %44, i32 %45)
  br label %58

47:                                               ; preds = %37
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %6, align 8
  store %struct.btrfs_fs_devices* %59, %struct.btrfs_fs_devices** %3, align 8
  br label %60

60:                                               ; preds = %58, %11
  %61 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %3, align 8
  ret %struct.btrfs_fs_devices* %61
}

declare dso_local %struct.btrfs_fs_devices* @kzalloc(i32, i32) #1

declare dso_local %struct.btrfs_fs_devices* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
