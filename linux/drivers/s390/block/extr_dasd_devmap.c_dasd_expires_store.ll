; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_expires_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_expires_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i64 }

@ENODEV = common dso_local global i64 0, align 8
@DASD_EXPIRES_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_expires_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_expires_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i64, align 8
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
  br label %48

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtoul(i8* %22, i32 10, i64* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @DASD_EXPIRES_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29, %25, %21
  %33 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %34 = call i32 @dasd_put_device(%struct.dasd_device* %33)
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %48

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %46 = call i32 @dasd_put_device(%struct.dasd_device* %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %44, %32, %18
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
