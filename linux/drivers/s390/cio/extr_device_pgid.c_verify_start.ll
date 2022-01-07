; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_verify_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_verify_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64, i32, i64, %struct.TYPE_8__*, %struct.ccw_dev_id, %struct.ccw_request }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { %struct.ccw_request* }
%struct.ccw_dev_id = type { i32 }
%struct.ccw_request = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PGID_TIMEOUT = common dso_local global i32 0, align 4
@PGID_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"snid\00", align 1
@snid_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@nop_filter = common dso_local global i32 0, align 4
@nop_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @verify_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca %struct.ccw_dev_id*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  store %struct.ccw_dev_id* %18, %struct.ccw_dev_id** %5, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.ccw_request*, %struct.ccw_request** %33, align 8
  %35 = call i32 @memset(%struct.ccw_request* %34, i32 0, i32 8)
  %36 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %41 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 8
  %49 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %50 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %54 = call i32 @memset(%struct.ccw_request* %53, i32 0, i32 24)
  %55 = load i32, i32* @PGID_TIMEOUT, align 4
  %56 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %57 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @PGID_RETRIES, align 4
  %59 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %60 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %62 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %61, i32 0, i32 0
  store i32 128, i32* %62, align 4
  %63 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %64 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %66 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %1
  %73 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %5, align 8
  %75 = call i32 @CIO_HEX_EVENT(i32 4, %struct.ccw_dev_id* %74, i32 4)
  %76 = load i32, i32* @snid_callback, align 4
  %77 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %78 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %80 = call i32 @snid_do(%struct.ccw_device* %79)
  br label %93

81:                                               ; preds = %1
  %82 = call i32 @CIO_TRACE_EVENT(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %5, align 8
  %84 = call i32 @CIO_HEX_EVENT(i32 4, %struct.ccw_dev_id* %83, i32 4)
  %85 = load i32, i32* @nop_filter, align 4
  %86 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %87 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @nop_callback, align 4
  %89 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %90 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %92 = call i32 @nop_do(%struct.ccw_device* %91)
  br label %93

93:                                               ; preds = %81, %72
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, %struct.ccw_dev_id*, i32) #1

declare dso_local i32 @snid_do(%struct.ccw_device*) #1

declare dso_local i32 @nop_do(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
