; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_ro_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_ro_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccw_device*, align 8
  %11 = alloca %struct.dasd_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ccw_device* @to_ccwdev(%struct.device* %15)
  store %struct.ccw_device* %16, %struct.ccw_device** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtouint(i8* %17, i32 0, i32* %13)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %109

26:                                               ; preds = %20
  %27 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %28 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @dasd_set_feature(%struct.ccw_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %109

35:                                               ; preds = %26
  %36 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %37 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %36)
  store %struct.dasd_device* %37, %struct.dasd_device** %11, align 8
  %38 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %39 = call i64 @IS_ERR(%struct.dasd_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %109

44:                                               ; preds = %35
  %45 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %46 = call i32 @get_ccwdev_lock(%struct.ccw_device* %45)
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_lock_irqsave(i32 %46, i64 %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %53 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 1
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %51, %44
  %58 = phi i1 [ true, %44 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %73 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %74 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %73, i32 0, i32 1
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71, %64, %57
  %78 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %79 = call i32 @get_ccwdev_lock(%struct.ccw_device* %78)
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32 %79, i64 %80)
  br label %104

82:                                               ; preds = %71
  %83 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %84 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %89 = call i32 @get_ccwdev_lock(%struct.ccw_device* %88)
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32 %89, i64 %90)
  %92 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %93 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @set_disk_ro(i32 %96, i32 %97)
  %99 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %100 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @atomic_dec(i32* %102)
  br label %104

104:                                              ; preds = %82, %77
  %105 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %106 = call i32 @dasd_put_device(%struct.dasd_device* %105)
  %107 = load i64, i64* %9, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %41, %33, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @dasd_set_feature(%struct.ccw_device*, i32, i32) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
