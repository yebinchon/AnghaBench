; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_genhd.c_dasd_scan_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_genhd.c_dasd_scan_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.block_device*, i32, i32 }
%struct.block_device = type { i32 }

@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"scan partitions error, bdget returned NULL\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"scan partitions error, blkdev_get returned %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"scan partitions error, rc %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_scan_partitions(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %6 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.block_device* @bdget_disk(i32 %8, i32 0)
  store %struct.block_device* %9, %struct.block_device** %4, align 8
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = icmp ne %struct.block_device* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @DBF_ERR, align 4
  %14 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i32, i8*, ...) @DBF_DEV_EVENT(i32 %13, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.block_device*, %struct.block_device** %4, align 8
  %22 = load i32, i32* @FMODE_READ, align 4
  %23 = call i32 @blkdev_get(%struct.block_device* %21, i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @DBF_ERR, align 4
  %28 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %29 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i32, i8*, ...) @DBF_DEV_EVENT(i32 %27, i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %20
  %36 = load %struct.block_device*, %struct.block_device** %4, align 8
  %37 = call i32 @blkdev_reread_part(%struct.block_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @DBF_ERR, align 4
  %42 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %43 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i32, i8*, ...) @DBF_DEV_EVENT(i32 %41, i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.block_device*, %struct.block_device** %4, align 8
  %49 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %50 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %49, i32 0, i32 0
  store %struct.block_device* %48, %struct.block_device** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %26, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.block_device* @bdget_disk(i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, ...) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @blkdev_reread_part(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
