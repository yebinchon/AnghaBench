; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_wait_dev_supers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_wait_dev_supers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i64, i32, i32, i32 }
%struct.buffer_head = type { i32 }

@BTRFS_SUPER_MIRROR_MAX = common dso_local global i32 0, align 4
@BTRFS_SUPER_INFO_SIZE = common dso_local global i64 0, align 8
@BTRFS_BDEV_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"error writing primary super block to device %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_device*, i32)* @wait_dev_supers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_dev_supers(%struct.btrfs_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_device* %0, %struct.btrfs_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BTRFS_SUPER_MIRROR_MAX, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @btrfs_sb_offset(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %71

32:                                               ; preds = %20
  %33 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %40 = call %struct.buffer_head* @__find_get_block(i32 %35, i32 %38, i64 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %6, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %68

50:                                               ; preds = %32
  %51 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %52 = call i32 @wait_on_buffer(%struct.buffer_head* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %54 = call i32 @buffer_uptodate(%struct.buffer_head* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = call i32 @brelse(%struct.buffer_head* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %67 = call i32 @brelse(%struct.buffer_head* %66)
  br label %68

68:                                               ; preds = %63, %49
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %16

71:                                               ; preds = %31, %16
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  %79 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @btrfs_err(i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %3, align 4
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 -1
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @btrfs_sb_offset(i32) #1

declare dso_local %struct.buffer_head* @__find_get_block(i32, i32, i64) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @btrfs_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
