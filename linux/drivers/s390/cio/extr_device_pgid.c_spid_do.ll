; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_spid_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_spid_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.ccw_request }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ccw_request = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32, i64 }

@SPID_FUNC_ESTABLISH = common dso_local global i32 0, align 4
@SPID_FUNC_RESIGN = common dso_local global i32 0, align 4
@SPID_FUNC_MULTI_PATH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @spid_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spid_do(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %16 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @lpm_adjust(i32 %17, i32 %22)
  %24 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %25 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %27 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %33 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @SPID_FUNC_ESTABLISH, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @SPID_FUNC_RESIGN, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @SPID_FUNC_MULTI_PATH, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @spid_build_cp(%struct.ccw_device* %57, i32 %58)
  %60 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %61 = call i32 @ccw_request_start(%struct.ccw_device* %60)
  br label %86

62:                                               ; preds = %30
  %63 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %72 = call i32 @pgid_wipeout_start(%struct.ccw_device* %71)
  br label %86

73:                                               ; preds = %62
  %74 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %75 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %76 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EACCES, align 4
  %82 = sub nsw i32 0, %81
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ 0, %79 ], [ %82, %80 ]
  %85 = call i32 @verify_done(%struct.ccw_device* %74, i32 %84)
  br label %86

86:                                               ; preds = %83, %70, %56
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @lpm_adjust(i32, i32) #1

declare dso_local i32 @spid_build_cp(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

declare dso_local i32 @pgid_wipeout_start(%struct.ccw_device*) #1

declare dso_local i32 @verify_done(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
