; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_eer_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_eer_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_device = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_eer_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_eer_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_ccwdev(%struct.device* %13)
  %15 = call %struct.dasd_device* @dasd_device_from_cdev(i32 %14)
  store %struct.dasd_device* %15, %struct.dasd_device** %10, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %21 = call i64 @PTR_ERR(%struct.dasd_device* %20)
  store i64 %21, i64* %5, align 8
  br label %52

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtouint(i8* %23, i32 0, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %22
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %52

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %37 = call i32 @dasd_eer_enable(%struct.dasd_device* %36)
  store i32 %37, i32* %12, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %40 = call i32 @dasd_eer_disable(%struct.dasd_device* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %43 = call i32 @dasd_put_device(%struct.dasd_device* %42)
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = sext i32 %44 to i64
  br label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %29, %19
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @dasd_eer_enable(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eer_disable(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
