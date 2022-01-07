; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_call_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_INTER_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_PRIM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ccw_device_call_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_call_handler(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call i32 @scsw_stctl(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %21 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %18, %1
  %29 = phi i1 [ true, %18 ], [ true, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %46
  store i32 0, i32* %2, align 4
  br label %96

60:                                               ; preds = %54, %41, %33, %28
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %64, i32 0)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %68 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %67, i32 0, i32 1
  %69 = load i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)** %68, align 8
  %70 = icmp ne i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %73 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %72, i32 0, i32 1
  %74 = load i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.ccw_device*, i32, %struct.TYPE_9__*)** %73, align 8
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 %74(%struct.ccw_device* %75, i32 %80, %struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %71, %66
  %89 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %90 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i32 @memset(%struct.TYPE_9__* %94, i32 0, i32 4)
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %59
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
