; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_ccw_device_disband_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_ccw_device_disband_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.ccw_request }
%struct.TYPE_9__ = type { i64 }
%struct.ccw_request = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"disb\00", align 1
@PGID_TIMEOUT = common dso_local global i32 0, align 4
@PGID_RETRIES = common dso_local global i32 0, align 4
@disband_callback = common dso_local global i32 0, align 4
@SPID_FUNC_DISBAND = common dso_local global i32 0, align 4
@SPID_FUNC_MULTI_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_disband_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @CIO_HEX_EVENT(i32 4, i32* %19, i32 4)
  %21 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %22 = call i32 @memset(%struct.ccw_request* %21, i32 0, i32 20)
  %23 = load i32, i32* @PGID_TIMEOUT, align 4
  %24 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %25 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @PGID_RETRIES, align 4
  %27 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %28 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %39 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %41 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @disband_callback, align 4
  %43 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %44 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SPID_FUNC_DISBAND, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %47 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load i32, i32* @SPID_FUNC_MULTI_PATH, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @spid_build_cp(%struct.ccw_device* %58, i32 %59)
  %61 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %62 = call i32 @ccw_request_start(%struct.ccw_device* %61)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @spid_build_cp(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
