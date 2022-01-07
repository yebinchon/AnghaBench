; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_dev.c_rtc_dev_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_dev.c_rtc_dev_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@rtc_devt = common dso_local global i32 0, align 4
@RTC_DEV_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"too many RTC devices\0A\00", align 1
@rtc_dev_fops = common dso_local global i32 0, align 4
@rtc_uie_task = common dso_local global i32 0, align 4
@rtc_uie_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_dev_prepare(%struct.rtc_device* %0) #0 {
  %2 = alloca %struct.rtc_device*, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %2, align 8
  %3 = load i32, i32* @rtc_devt, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTC_DEV_MAX, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 5
  %15 = call i32 @dev_dbg(%struct.TYPE_3__* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

16:                                               ; preds = %6
  %17 = load i32, i32* @rtc_devt, align 4
  %18 = call i32 @MAJOR(i32 %17)
  %19 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %20 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @MKDEV(i32 %18, i64 %21)
  %23 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %27 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %26, i32 0, i32 2
  %28 = call i32 @cdev_init(%struct.TYPE_4__* %27, i32* @rtc_dev_fops)
  %29 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %30 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %33 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %16, %12, %5
  ret void
}

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
