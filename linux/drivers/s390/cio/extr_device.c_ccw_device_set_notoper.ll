; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_set_notoper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_set_notoper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"notoper\00", align 1
@DEV_STATE_NOT_OPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_set_notoper(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.subchannel* @to_subchannel(i32 %7)
  store %struct.subchannel* %8, %struct.subchannel** %3, align 8
  %9 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 0
  %12 = call i8* @dev_name(i32* %11)
  %13 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %12)
  %14 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %15 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %14, i32 0)
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = call i32 @cio_disable_subchannel(%struct.subchannel* %16)
  %18 = load i32, i32* @DEV_STATE_NOT_OPER, align 4
  %19 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
