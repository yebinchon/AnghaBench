; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_16__*, i32 (%struct.ccw_device*, i32, %struct.irb*)* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i8*, i64, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.irb = type { %struct.TYPE_13__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@cio_irb = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@DEV_STATE_W4SENSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_irq(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %7, %struct.irb** %5, align 8
  %8 = load %struct.irb*, %struct.irb** %5, align 8
  %9 = getelementptr inbounds %struct.irb, %struct.irb* %8, i32 0, i32 1
  %10 = call i32 @scsw_is_tm(%struct.TYPE_17__* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.irb*, %struct.irb** %5, align 8
  %15 = getelementptr inbounds %struct.irb, %struct.irb* %14, i32 0, i32 1
  %16 = call i32 @scsw_is_solicited(%struct.TYPE_17__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %18
  %22 = load %struct.irb*, %struct.irb** %5, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %21
  %31 = load %struct.irb*, %struct.irb** %5, align 8
  %32 = getelementptr inbounds %struct.irb, %struct.irb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %30
  %39 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %40 = load %struct.irb*, %struct.irb** %5, align 8
  %41 = call i64 @ccw_device_do_sense(%struct.ccw_device* %39, %struct.irb* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %63

44:                                               ; preds = %38
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.irb*, %struct.irb** %5, align 8
  %52 = call i32 @memcpy(i32* %50, %struct.irb* %51, i32 8)
  %53 = load i8*, i8** @DEV_STATE_W4SENSE, align 8
  %54 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %55 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  br label %128

62:                                               ; preds = %30, %21, %18
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 1
  %66 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %65, align 8
  %67 = icmp ne i32 (%struct.ccw_device*, i32, %struct.irb*)* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %69, i32 0, i32 1
  %71 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %70, align 8
  %72 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %73 = load %struct.irb*, %struct.irb** %5, align 8
  %74 = call i32 %71(%struct.ccw_device* %72, i32 0, %struct.irb* %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %85 = call i32 @ccw_device_online_verify(%struct.ccw_device* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %75
  br label %128

87:                                               ; preds = %2
  %88 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %89 = load %struct.irb*, %struct.irb** %5, align 8
  %90 = call i32 @ccw_device_accumulate_irb(%struct.ccw_device* %88, %struct.irb* %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %95 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %93
  %102 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %103 = load %struct.irb*, %struct.irb** %5, align 8
  %104 = call i64 @ccw_device_do_sense(%struct.ccw_device* %102, %struct.irb* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i8*, i8** @DEV_STATE_W4SENSE, align 8
  %108 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %109 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  store i8* %107, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %101
  br label %128

113:                                              ; preds = %93, %87
  %114 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %115 = call i64 @ccw_device_call_handler(%struct.ccw_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %119 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %127 = call i32 @ccw_device_online_verify(%struct.ccw_device* %126, i32 0)
  br label %128

128:                                              ; preds = %44, %86, %112, %125, %117, %113
  ret void
}

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @scsw_is_tm(%struct.TYPE_17__*) #1

declare dso_local i32 @scsw_is_solicited(%struct.TYPE_17__*) #1

declare dso_local i64 @ccw_device_do_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @memcpy(i32*, %struct.irb*, i32) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_accumulate_irb(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i64 @ccw_device_call_handler(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
