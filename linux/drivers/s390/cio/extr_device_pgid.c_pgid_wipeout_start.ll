; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_wipeout_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_wipeout_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, %struct.ccw_request, %struct.ccw_dev_id }
%struct.TYPE_9__ = type { i64 }
%struct.ccw_request = type { i32, i32, i32, i32 }
%struct.ccw_dev_id = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"wipe: device 0.%x.%04x: pvm=%02x nim=%02x\0A\00", align 1
@PGID_TIMEOUT = common dso_local global i32 0, align 4
@PGID_RETRIES = common dso_local global i32 0, align 4
@pgid_wipeout_callback = common dso_local global i32 0, align 4
@SPID_FUNC_DISBAND = common dso_local global i32 0, align 4
@SPID_FUNC_MULTI_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @pgid_wipeout_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgid_wipeout_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_dev_id*, align 8
  %5 = alloca %struct.ccw_request*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %3, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store %struct.ccw_dev_id* %15, %struct.ccw_dev_id** %4, align 8
  %16 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  store %struct.ccw_request* %19, %struct.ccw_request** %5, align 8
  %20 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %4, align 8
  %21 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %4, align 8
  %24 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %27 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %30, i32 %35)
  %37 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %38 = call i32 @memset(%struct.ccw_request* %37, i32 0, i32 16)
  %39 = load i32, i32* @PGID_TIMEOUT, align 4
  %40 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %41 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PGID_RETRIES, align 4
  %43 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %44 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %51 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @pgid_wipeout_callback, align 4
  %53 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %54 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SPID_FUNC_DISBAND, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %1
  %64 = load i32, i32* @SPID_FUNC_MULTI_PATH, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %1
  %68 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @spid_build_cp(%struct.ccw_device* %68, i32 %69)
  %71 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %72 = call i32 @ccw_request_start(%struct.ccw_device* %71)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ccw_request*, i32, i32) #1

declare dso_local i32 @spid_build_cp(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
