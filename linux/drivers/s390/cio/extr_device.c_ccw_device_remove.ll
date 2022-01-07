; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.ccw_driver*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_driver = type { i32 (%struct.ccw_device.0*)* }
%struct.ccw_device.0 = type opaque
%struct.subchannel = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"ccw_device_offline returned %d, device 0.%x.%04x\0A\00", align 1
@IRQIO_CIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccw_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.ccw_driver*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.ccw_device* @to_ccwdev(%struct.device* %7)
  store %struct.ccw_device* %8, %struct.ccw_device** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 3
  %11 = load %struct.ccw_driver*, %struct.ccw_driver** %10, align 8
  store %struct.ccw_driver* %11, %struct.ccw_driver** %4, align 8
  %12 = load %struct.ccw_driver*, %struct.ccw_driver** %4, align 8
  %13 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.ccw_device.0*)*, i32 (%struct.ccw_device.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.ccw_device.0*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.ccw_driver*, %struct.ccw_driver** %4, align 8
  %18 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.ccw_device.0*)*, i32 (%struct.ccw_device.0*)** %18, align 8
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = bitcast %struct.ccw_device* %20 to %struct.ccw_device.0*
  %22 = call i32 %19(%struct.ccw_device.0* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @spin_lock_irq(i32 %26)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %23
  %33 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %34 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = call i32 @ccw_device_offline(%struct.ccw_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @spin_unlock_irq(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %50 = call i32 @dev_fsm_final_state(%struct.ccw_device* %49)
  %51 = call i32 @wait_event(i32 %48, i32 %50)
  br label %67

52:                                               ; preds = %32
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %55 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %52, %43
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %68, i32 0, i32 1
  %70 = call i32 @put_device(%struct.TYPE_6__* %69)
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @spin_lock_irq(i32 %73)
  br label %75

75:                                               ; preds = %67, %23
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %76, i32 0)
  %78 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %79 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %78, i32 0, i32 3
  store %struct.ccw_driver* null, %struct.ccw_driver** %79, align 8
  %80 = load i32, i32* @IRQIO_CIO, align 4
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %86 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.subchannel* @to_subchannel(i32 %88)
  store %struct.subchannel* %89, %struct.subchannel** %5, align 8
  %90 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %91 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @spin_unlock_irq(i32 %92)
  %94 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %95 = call i32 @io_subchannel_quiesce(%struct.subchannel* %94)
  %96 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %97 = call i32 @__disable_cmf(%struct.ccw_device* %96)
  ret i32 0
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @ccw_device_offline(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dev_fsm_final_state(%struct.ccw_device*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @io_subchannel_quiesce(%struct.subchannel*) #1

declare dso_local i32 @__disable_cmf(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
