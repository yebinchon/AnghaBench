; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_and_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_and_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.irb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_accumulate_and_sense(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %7 = load %struct.irb*, %struct.irb** %5, align 8
  %8 = call i32 @ccw_device_accumulate_irb(%struct.ccw_device* %6, %struct.irb* %7)
  %9 = load %struct.irb*, %struct.irb** %5, align 8
  %10 = getelementptr inbounds %struct.irb, %struct.irb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %15 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %24 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load %struct.irb*, %struct.irb** %5, align 8
  %32 = getelementptr inbounds %struct.irb, %struct.irb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %30
  %40 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %51 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %70

55:                                               ; preds = %30, %22
  %56 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %65 = load %struct.irb*, %struct.irb** %5, align 8
  %66 = call i32 @ccw_device_do_sense(%struct.ccw_device* %64, %struct.irb* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %63, %39, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ccw_device_accumulate_irb(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @ccw_device_do_sense(%struct.ccw_device*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
