; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_ccw_device_sense_id_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_ccw_device_sense_id_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.ccw_request }
%struct.TYPE_7__ = type { i32, %struct.ccw1* }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.ccw_request = type { i32, i32, i32, i32, i32, %struct.ccw1* }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"snsid\00", align 1
@CCW_CMD_SENSE_ID = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@SENSE_ID_TIMEOUT = common dso_local global i32 0, align 4
@SENSE_ID_RETRIES = common dso_local global i32 0, align 4
@snsid_check = common dso_local global i32 0, align 4
@snsid_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_sense_id_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca %struct.ccw1*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.ccw1*, %struct.ccw1** %20, align 8
  store %struct.ccw1* %21, %struct.ccw1** %5, align 8
  %22 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %24 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = call i32 @CIO_HEX_EVENT(i32 4, i32* %26, i32 4)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %29 = call i32 @snsid_init(%struct.ccw_device* %28)
  %30 = load i32, i32* @CCW_CMD_SENSE_ID, align 4
  %31 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %34 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = ptrtoint i32* %38 to i64
  %40 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %41 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  %44 = load i32, i32* @CCW_FLAG_SLI, align 4
  %45 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %48 = call i32 @memset(%struct.ccw_request* %47, i32 0, i32 32)
  %49 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %50 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %51 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %50, i32 0, i32 5
  store %struct.ccw1* %49, %struct.ccw1** %51, align 8
  %52 = load i32, i32* @SENSE_ID_TIMEOUT, align 4
  %53 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %54 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @SENSE_ID_RETRIES, align 4
  %56 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %57 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %59 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %64 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %68 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @snsid_check, align 4
  %70 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %71 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @snsid_callback, align 4
  %73 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %74 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %76 = call i32 @ccw_request_start(%struct.ccw_device* %75)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @snsid_init(%struct.ccw_device*) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
