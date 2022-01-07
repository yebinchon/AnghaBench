; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_path_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_path_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, i32)* }

@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_path_reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_path_reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i32 @to_ccwdev(%struct.device* %12)
  %14 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %13)
  store %struct.dasd_device* %14, %struct.dasd_device** %10, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %16 = call i64 @IS_ERR(%struct.dasd_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %54

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtouint(i8* %22, i32 16, i32* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %21
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dasd_device*, i32)*, i32 (%struct.dasd_device*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.dasd_device*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dasd_device*, i32)*, i32 (%struct.dasd_device*, i32)** %45, align 8
  %47 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 %46(%struct.dasd_device* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %34, %29
  %51 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %52 = call i32 @dasd_put_device(%struct.dasd_device* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %50, %18
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
