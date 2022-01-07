; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_core.c_telemetry_def_get_eventconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_core.c_telemetry_def_get_eventconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_evtconfig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.telemetry_evtconfig*, %struct.telemetry_evtconfig*, i32, i32)* @telemetry_def_get_eventconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_def_get_eventconfig(%struct.telemetry_evtconfig* %0, %struct.telemetry_evtconfig* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.telemetry_evtconfig*, align 8
  %6 = alloca %struct.telemetry_evtconfig*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.telemetry_evtconfig* %0, %struct.telemetry_evtconfig** %5, align 8
  store %struct.telemetry_evtconfig* %1, %struct.telemetry_evtconfig** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
