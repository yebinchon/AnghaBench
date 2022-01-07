; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_safe_offline_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_safe_offline_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32 }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_safe_offline_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_safe_offline_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ccw_device*, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ccw_device* @to_ccwdev(%struct.device* %13)
  store %struct.ccw_device* %14, %struct.ccw_device** %9, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %16 = call i32 @get_ccwdev_lock(%struct.ccw_device* %15)
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %20 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %19)
  store %struct.dasd_device* %20, %struct.dasd_device** %10, align 8
  %21 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %22 = call i64 @IS_ERR(%struct.dasd_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.dasd_device* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %28 = call i32 @get_ccwdev_lock(%struct.ccw_device* %27)
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  br label %65

31:                                               ; preds = %4
  %32 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %33 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %39 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %40 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %31
  %44 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %45 = call i32 @dasd_put_device(%struct.dasd_device* %44)
  %46 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %47 = call i32 @get_ccwdev_lock(%struct.ccw_device* %46)
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32 %47, i64 %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %65

52:                                               ; preds = %37
  %53 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %54 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %55 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %58 = call i32 @dasd_put_device(%struct.dasd_device* %57)
  %59 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %60 = call i32 @get_ccwdev_lock(%struct.ccw_device* %59)
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32 %60, i64 %61)
  %63 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %64 = call i32 @ccw_device_set_offline(%struct.ccw_device* %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %52, %43, %24
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  br label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i64 [ %70, %68 ], [ %72, %71 ]
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
