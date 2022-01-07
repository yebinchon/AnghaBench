; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_w4sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_w4sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, i32 (%struct.ccw_device*, i32, %struct.irb*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.irb = type { i32 }

@cio_irb = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"0.%x.%04x: unsolicited interrupt during w4sense...\0A\00", align 1
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@SCSW_FCTL_HALT_FUNC = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_w4sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_w4sense(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %6, %struct.irb** %5, align 8
  %7 = load %struct.irb*, %struct.irb** %5, align 8
  %8 = getelementptr inbounds %struct.irb, %struct.irb* %7, i32 0, i32 0
  %9 = call i32 @scsw_stctl(i32* %8)
  %10 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %11 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.irb*, %struct.irb** %5, align 8
  %16 = getelementptr inbounds %struct.irb, %struct.irb* %15, i32 0, i32 0
  %17 = call i32 @scsw_cc(i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = load %struct.irb*, %struct.irb** %5, align 8
  %22 = call i32 @ccw_device_do_sense(%struct.ccw_device* %20, %struct.irb* %21)
  br label %49

23:                                               ; preds = %14
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %35)
  %37 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 1
  %39 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %38, align 8
  %40 = icmp ne i32 (%struct.ccw_device*, i32, %struct.irb*)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 1
  %44 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %43, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = load %struct.irb*, %struct.irb** %5, align 8
  %47 = call i32 %44(%struct.ccw_device* %45, i32 0, %struct.irb* %46)
  br label %48

48:                                               ; preds = %41, %23
  br label %49

49:                                               ; preds = %48, %19
  br label %116

50:                                               ; preds = %2
  %51 = load %struct.irb*, %struct.irb** %5, align 8
  %52 = getelementptr inbounds %struct.irb, %struct.irb* %51, i32 0, i32 0
  %53 = call i32 @scsw_fctl(i32* %52)
  %54 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %55 = load i32, i32* @SCSW_FCTL_HALT_FUNC, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %66 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  %72 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %73 = load %struct.irb*, %struct.irb** %5, align 8
  %74 = call i32 @ccw_device_accumulate_irb(%struct.ccw_device* %72, %struct.irb* %73)
  br label %91

75:                                               ; preds = %50
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = load %struct.irb*, %struct.irb** %5, align 8
  %78 = call i32 @ccw_device_accumulate_basic_sense(%struct.ccw_device* %76, %struct.irb* %77)
  %79 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %80 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %88 = load %struct.irb*, %struct.irb** %5, align 8
  %89 = call i32 @ccw_device_do_sense(%struct.ccw_device* %87, %struct.irb* %88)
  br label %116

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* @DEV_STATE_ONLINE, align 4
  %93 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %94 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %98 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @wake_up(i32* %100)
  %102 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %103 = call i64 @ccw_device_call_handler(%struct.ccw_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %91
  %106 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %107 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %115 = call i32 @ccw_device_online_verify(%struct.ccw_device* %114, i32 0)
  br label %116

116:                                              ; preds = %49, %86, %113, %105, %91
  ret void
}

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @scsw_cc(i32*) #1

declare dso_local i32 @ccw_device_do_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @scsw_fctl(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ccw_device_accumulate_irb(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @ccw_device_accumulate_basic_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @ccw_device_call_handler(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
