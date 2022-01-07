; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_check_tree_block_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_check_tree_block_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { %struct.btrfs_fs_devices*, i32*, i32* }

@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4
@METADATA_UUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*)* @check_tree_block_fsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tree_block_fsid(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_fs_devices*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %3, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  store %struct.btrfs_fs_devices* %14, %struct.btrfs_fs_devices** %4, align 8
  %15 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = call i32 (...) @btrfs_header_fsid()
  %21 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %22 = call i32 @read_extent_buffer(%struct.extent_buffer* %19, i32* %18, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %51, %1
  %24 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %25 = icmp ne %struct.btrfs_fs_devices* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 0
  %30 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %29, align 8
  %31 = icmp eq %struct.btrfs_fs_devices* %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %34 = load i32, i32* @METADATA_UUID, align 4
  %35 = call i64 @btrfs_fs_incompat(%struct.btrfs_fs_info* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  br label %45

41:                                               ; preds = %32, %26
  %42 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %48 = call i32 @memcmp(i32* %18, i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %52, i32 0, i32 0
  %54 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %53, align 8
  store %struct.btrfs_fs_devices* %54, %struct.btrfs_fs_devices** %4, align 8
  br label %23

55:                                               ; preds = %50, %23
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i32, i32) #2

declare dso_local i32 @btrfs_header_fsid(...) #2

declare dso_local i64 @btrfs_fs_incompat(%struct.btrfs_fs_info*, i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
