; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_recognition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_recognition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32 }

@DEV_STATE_SENSE_ID = common dso_local global i32 0, align 4
@DEV_STATE_NOT_OPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_recognition(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.subchannel* @to_subchannel(i32 %7)
  store %struct.subchannel* %8, %struct.subchannel** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @DEV_STATE_SENSE_ID, align 4
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = ptrtoint %struct.subchannel* %20 to i64
  %22 = trunc i64 %21 to i32
  %23 = call i64 @cio_enable_subchannel(%struct.subchannel* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %27 = load i32, i32* @DEV_STATE_NOT_OPER, align 4
  %28 = call i32 @ccw_device_recog_done(%struct.ccw_device* %26, i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %31 = call i32 @ccw_device_sense_id_start(%struct.ccw_device* %30)
  br label %32

32:                                               ; preds = %29, %25
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @ccw_device_recog_done(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_sense_id_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
