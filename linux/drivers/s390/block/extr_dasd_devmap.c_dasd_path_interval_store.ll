; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_path_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_path_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i64 }

@ENODEV = common dso_local global i64 0, align 8
@DASD_INTERVAL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_path_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_path_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i64, align 8
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
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @ENODEV, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %59

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 10, i64* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @DASD_INTERVAL_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %26, %22
  %34 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %35 = call i32 @dasd_put_device(%struct.dasd_device* %34)
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @to_ccwdev(%struct.device* %39)
  %41 = call i32 @get_ccwdev_lock(i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_lock_irqsave(i32 %41, i64 %42)
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @to_ccwdev(%struct.device* %51)
  %53 = call i32 @get_ccwdev_lock(i32 %52)
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32 %53, i64 %54)
  %56 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %57 = call i32 @dasd_put_device(%struct.dasd_device* %56)
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %50, %33, %19
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
