; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_do_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_do_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.irb = type { i32 }
%struct.subchannel = type { i32 }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ccw1 }

@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CCW_CMD_BASIC_SENSE = common dso_local global i32 0, align 4
@SENSE_MAX_COUNT = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DEV_EVENT_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_do_sense(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.subchannel* @to_subchannel(i32 %12)
  store %struct.subchannel* %13, %struct.subchannel** %6, align 8
  %14 = load %struct.irb*, %struct.irb** %5, align 8
  %15 = getelementptr inbounds %struct.irb, %struct.irb* %14, i32 0, i32 0
  %16 = call i32 @scsw_actl(i32* %15)
  %17 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %18 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %27 = call %struct.TYPE_12__* @to_io_private(%struct.subchannel* %26)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.ccw1* %30, %struct.ccw1** %7, align 8
  %31 = load i32, i32* @CCW_CMD_BASIC_SENSE, align 4
  %32 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %33 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @__pa(i32 %41)
  %43 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %44 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @SENSE_MAX_COUNT, align 4
  %46 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @CCW_FLAG_SLI, align 4
  %49 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %52 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %53 = call i32 @cio_start(%struct.subchannel* %51, %struct.ccw1* %52, i32 255)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %25
  %64 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %65 = load i32, i32* @DEV_EVENT_VERIFY, align 4
  %66 = call i32 @dev_fsm_event(%struct.ccw_device* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %22
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local %struct.TYPE_12__* @to_io_private(%struct.subchannel*) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @cio_start(%struct.subchannel*, %struct.ccw1*, i32) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
