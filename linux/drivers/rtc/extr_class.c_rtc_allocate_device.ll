; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_rtc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_rtc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, i32, i32, i64, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@rtc_class = common dso_local global i32 0, align 4
@rtc_device_release = common dso_local global i32 0, align 4
@rtc_timer_do_work = common dso_local global i32 0, align 4
@rtc_aie_update_irq = common dso_local global i32 0, align 4
@rtc_uie_update_irq = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@rtc_pie_update_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtc_device* ()* @rtc_allocate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtc_device* @rtc_allocate_device() #0 {
  %1 = alloca %struct.rtc_device*, align 8
  %2 = alloca %struct.rtc_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.rtc_device* @kzalloc(i32 72, i32 %3)
  store %struct.rtc_device* %4, %struct.rtc_device** %2, align 8
  %5 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %6 = icmp ne %struct.rtc_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.rtc_device* null, %struct.rtc_device** %1, align 8
  br label %70

8:                                                ; preds = %0
  %9 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %10 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %9, i32 0, i32 12
  %11 = call i32 @device_initialize(%struct.TYPE_4__* %10)
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = sdiv i32 %12, 2
  %14 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %15 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %17 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %19 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %18, i32 0, i32 2
  store i32 64, i32* %19, align 8
  %20 = load i32, i32* @rtc_class, align 4
  %21 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %22 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = call i32 (...) @rtc_get_dev_attribute_groups()
  %25 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %26 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @rtc_device_release, align 4
  %29 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %30 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %33 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %32, i32 0, i32 11
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %36 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %35, i32 0, i32 10
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %39 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %38, i32 0, i32 9
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %42 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %41, i32 0, i32 8
  %43 = call i32 @timerqueue_init_head(i32* %42)
  %44 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %45 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %44, i32 0, i32 7
  %46 = load i32, i32* @rtc_timer_do_work, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %49 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %48, i32 0, i32 6
  %50 = load i32, i32* @rtc_aie_update_irq, align 4
  %51 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %52 = call i32 @rtc_timer_init(i32* %49, i32 %50, %struct.rtc_device* %51)
  %53 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %54 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %53, i32 0, i32 5
  %55 = load i32, i32* @rtc_uie_update_irq, align 4
  %56 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %57 = call i32 @rtc_timer_init(i32* %54, i32 %55, %struct.rtc_device* %56)
  %58 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %59 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %58, i32 0, i32 4
  %60 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %61 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %62 = call i32 @hrtimer_init(%struct.TYPE_3__* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @rtc_pie_update_irq, align 4
  %64 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %65 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %68 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  store %struct.rtc_device* %69, %struct.rtc_device** %1, align 8
  br label %70

70:                                               ; preds = %8, %7
  %71 = load %struct.rtc_device*, %struct.rtc_device** %1, align 8
  ret %struct.rtc_device* %71
}

declare dso_local %struct.rtc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @rtc_get_dev_attribute_groups(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timerqueue_init_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rtc_timer_init(i32*, i32, %struct.rtc_device*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
