; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_reset_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_reset_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_evtconfig = type { i8*, i8*, i32* }

@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i8* null, align 8
@TELEM_SAMPLING_DEFAULT_PERIOD = common dso_local global i8* null, align 8
@TELEM_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TELEMETRY Reset Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @telemetry_plt_reset_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_reset_events() #0 {
  %1 = alloca %struct.telemetry_evtconfig, align 8
  %2 = alloca %struct.telemetry_evtconfig, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %1, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load i8*, i8** @TELEM_MAX_OS_ALLOCATED_EVENTS, align 8
  %6 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %1, i32 0, i32 1
  store i8* %5, i8** %6, align 8
  %7 = load i8*, i8** @TELEM_SAMPLING_DEFAULT_PERIOD, align 8
  %8 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %1, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %2, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** @TELEM_MAX_OS_ALLOCATED_EVENTS, align 8
  %11 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %2, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @TELEM_SAMPLING_DEFAULT_PERIOD, align 8
  %13 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %2, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @TELEM_RESET, align 4
  %15 = call i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %1, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %2, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
