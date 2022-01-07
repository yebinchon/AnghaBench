; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_basic_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_basic_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_23__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.irb = type { %struct.TYPE_26__, %struct.TYPE_17__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_accumulate_basic_sense(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %5 = load %struct.irb*, %struct.irb** %4, align 8
  %6 = getelementptr inbounds %struct.irb, %struct.irb* %5, i32 0, i32 1
  %7 = call i32 @scsw_stctl(%struct.TYPE_17__* %6)
  %8 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %80

12:                                               ; preds = %2
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = load %struct.irb*, %struct.irb** %4, align 8
  %15 = call i32 @ccw_device_msg_control_check(%struct.ccw_device* %13, %struct.irb* %14)
  %16 = load %struct.irb*, %struct.irb** %4, align 8
  %17 = getelementptr inbounds %struct.irb, %struct.irb* %16, i32 0, i32 1
  %18 = call i64 @scsw_is_valid_pno(%struct.TYPE_17__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.irb*, %struct.irb** %4, align 8
  %22 = getelementptr inbounds %struct.irb, %struct.irb* %21, i32 0, i32 1
  %23 = call i64 @scsw_pno(%struct.TYPE_17__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %27 = call i32 @ccw_device_path_notoper(%struct.ccw_device* %26)
  br label %28

28:                                               ; preds = %25, %20, %12
  %29 = load %struct.irb*, %struct.irb** %4, align 8
  %30 = getelementptr inbounds %struct.irb, %struct.irb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %28
  %38 = load %struct.irb*, %struct.irb** %4, align 8
  %39 = getelementptr inbounds %struct.irb, %struct.irb* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %46, %37, %28
  %63 = load %struct.irb*, %struct.irb** %4, align 8
  %64 = call i64 @ccw_device_accumulate_esw_valid(%struct.irb* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.irb*, %struct.irb** %4, align 8
  %68 = getelementptr inbounds %struct.irb, %struct.irb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %11, %74, %66, %62
  ret void
}

declare dso_local i32 @scsw_stctl(%struct.TYPE_17__*) #1

declare dso_local i32 @ccw_device_msg_control_check(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i64 @scsw_is_valid_pno(%struct.TYPE_17__*) #1

declare dso_local i64 @scsw_pno(%struct.TYPE_17__*) #1

declare dso_local i32 @ccw_device_path_notoper(%struct.ccw_device*) #1

declare dso_local i64 @ccw_device_accumulate_esw_valid(%struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
