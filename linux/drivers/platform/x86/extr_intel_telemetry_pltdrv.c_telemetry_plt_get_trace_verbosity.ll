; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_get_trace_verbosity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_get_trace_verbosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.TYPE_2__* null, align 8
@IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PSS TRACE_CTRL Read Failed\0A\00", align 1
@PMC_IPC_PMC_TELEMTRY = common dso_local global i32 0, align 4
@IOSS_TELEM_TRACE_CTL_READ = common dso_local global i32 0, align 4
@IOSS_TELEM_READ_WORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"IOSS TRACE_CTL Read Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unknown Telemetry Unit Specified %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @telemetry_plt_get_trace_verbosity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_get_trace_verbosity(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 129, label %26
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL, align 4
  %20 = call i32 @intel_punit_ipc_command(i32 %19, i32 0, i32 0, i32* null, i32* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %46

25:                                               ; preds = %18
  br label %41

26:                                               ; preds = %13
  %27 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %28 = load i32, i32* @IOSS_TELEM_TRACE_CTL_READ, align 4
  %29 = load i32, i32* @IOSS_TELEM_READ_WORD, align 4
  %30 = call i32 @intel_pmc_ipc_command(i32 %27, i32 %28, i32* null, i32 0, i32* %6, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %46

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %35, %25
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TELEM_EXTRACT_VERBOSITY(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %33, %23
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_punit_ipc_command(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @TELEM_EXTRACT_VERBOSITY(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
