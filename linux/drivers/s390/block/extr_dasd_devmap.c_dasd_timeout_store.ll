; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_ccwdev(%struct.device* %13)
  %15 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %14)
  store %struct.dasd_device* %15, %struct.dasd_device** %10, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %4
  %25 = load i64, i64* @ENODEV, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %69

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtoul(i8* %28, i32 10, i64* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @UINT_MAX, align 8
  %34 = load i64, i64* @HZ, align 8
  %35 = udiv i64 %33, %34
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %27
  %38 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %39 = call i32 @dasd_put_device(%struct.dasd_device* %38)
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %69

42:                                               ; preds = %31
  %43 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.request_queue*, %struct.request_queue** %46, align 8
  store %struct.request_queue* %47, %struct.request_queue** %11, align 8
  %48 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %49 = icmp ne %struct.request_queue* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %52 = call i32 @dasd_put_device(%struct.dasd_device* %51)
  %53 = load i64, i64* @ENODEV, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %69

55:                                               ; preds = %42
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %58 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %60 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HZ, align 8
  %64 = mul i64 %62, %63
  %65 = call i32 @blk_queue_rq_timeout(%struct.request_queue* %59, i64 %64)
  %66 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %67 = call i32 @dasd_put_device(%struct.dasd_device* %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %55, %50, %37, %24
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @blk_queue_rq_timeout(%struct.request_queue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
