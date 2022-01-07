; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_update_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_update_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_evtconfig = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"PSS Sampling Period Out of Range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IOSS Sampling Period Out of Range\0A\00", align 1
@TELEM_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"TELEMETRY Config Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32)* @telemetry_plt_update_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_update_events(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.telemetry_evtconfig, align 8
  %7 = alloca %struct.telemetry_evtconfig, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.telemetry_evtconfig* %6 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  %12 = bitcast %struct.telemetry_evtconfig* %7 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %3, i32* %14, align 8
  %15 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @TELEM_SAMPLE_PERIOD_INVALID(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %18, %4
  %28 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @TELEM_SAMPLE_PERIOD_INVALID(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %59

40:                                               ; preds = %31, %27
  %41 = load i32, i32* @TELEM_UPDATE, align 4
  %42 = bitcast %struct.telemetry_evtconfig* %6 to { i64, i32 }*
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %struct.telemetry_evtconfig* %7 to { i64, i32 }*
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @telemetry_setup_evtconfig(i64 %44, i32 %46, i64 %49, i32 %51, i32 %41)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %36, %23
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @TELEM_SAMPLE_PERIOD_INVALID(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @telemetry_setup_evtconfig(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
