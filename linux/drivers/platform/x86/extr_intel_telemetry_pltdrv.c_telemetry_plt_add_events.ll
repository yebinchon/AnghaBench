; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_add_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_add_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.telemetry_evtconfig = type { i32, i8*, i32* }

@telm_conf = common dso_local global %struct.TYPE_6__* null, align 8
@TELEM_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TELEMETRY ADD Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*)* @telemetry_plt_add_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_add_events(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.telemetry_evtconfig, align 8
  %10 = alloca %struct.telemetry_evtconfig, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %9, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %9, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %10, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %10, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @TELEM_ADD, align 4
  %31 = call i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %9, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %10, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %4
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
