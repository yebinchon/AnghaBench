; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_core.c_telemetry_read_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_core.c_telemetry_read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.telemetry_evtlog*, i32, i32)* }
%struct.telemetry_evtlog = type { i32 }

@telm_core_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telemetry_read_events(i32 %0, %struct.telemetry_evtlog* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.telemetry_evtlog*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.telemetry_evtlog* %1, %struct.telemetry_evtlog** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telm_core_conf, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (i32, %struct.telemetry_evtlog*, i32, i32)*, i32 (i32, %struct.telemetry_evtlog*, i32, i32)** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.telemetry_evtlog*, %struct.telemetry_evtlog** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 %9(i32 %10, %struct.telemetry_evtlog* %11, i32 %12, i32 0)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
