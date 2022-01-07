; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_set_trace_verbosity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_set_trace_verbosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TELEM_TRC_VERBOSITY_MASK = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.TYPE_2__* null, align 8
@IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PSS TRACE_CTRL Read Failed\0A\00", align 1
@IPC_PUNIT_BIOS_WRITE_TELE_TRACE_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PSS TRACE_CTRL Verbosity Set Failed\0A\00", align 1
@PMC_IPC_PMC_TELEMTRY = common dso_local global i32 0, align 4
@IOSS_TELEM_TRACE_CTL_READ = common dso_local global i32 0, align 4
@IOSS_TELEM_READ_WORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"IOSS TRACE_CTL Read Failed\0A\00", align 1
@IOSS_TELEM_TRACE_CTL_WRITE = common dso_local global i32 0, align 4
@IOSS_TELEM_WRITE_FOURBYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"IOSS TRACE_CTL Verbosity Set Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unknown Telemetry Unit Specified %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @telemetry_plt_set_trace_verbosity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_set_trace_verbosity(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @TELEM_TRC_VERBOSITY_MASK, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %58 [
    i32 128, label %14
    i32 129, label %34
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL, align 4
  %16 = call i32 @intel_punit_ipc_command(i32 %15, i32 0, i32 0, i32* null, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TELEM_CLEAR_VERBOSITY_BITS(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TELEM_SET_VERBOSITY_BITS(i32 %24, i32 %25)
  %27 = load i32, i32* @IPC_PUNIT_BIOS_WRITE_TELE_TRACE_CTRL, align 4
  %28 = call i32 @intel_punit_ipc_command(i32 %27, i32 0, i32 0, i32* %5, i32* null)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %64

33:                                               ; preds = %21
  br label %63

34:                                               ; preds = %2
  %35 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %36 = load i32, i32* @IOSS_TELEM_TRACE_CTL_READ, align 4
  %37 = load i32, i32* @IOSS_TELEM_READ_WORD, align 4
  %38 = call i32 @intel_pmc_ipc_command(i32 %35, i32 %36, i32* null, i32 0, i32* %5, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %64

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @TELEM_CLEAR_VERBOSITY_BITS(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @TELEM_SET_VERBOSITY_BITS(i32 %46, i32 %47)
  %49 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %50 = load i32, i32* @IOSS_TELEM_TRACE_CTL_WRITE, align 4
  %51 = load i32, i32* @IOSS_TELEM_WRITE_FOURBYTES, align 4
  %52 = call i32 @intel_pmc_ipc_command(i32 %49, i32 %50, i32* %5, i32 %51, i32* null, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %64

57:                                               ; preds = %43
  br label %63

58:                                               ; preds = %2
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %57, %33
  br label %64

64:                                               ; preds = %63, %55, %41, %31, %19
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_punit_ipc_command(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @TELEM_CLEAR_VERBOSITY_BITS(i32) #1

declare dso_local i32 @TELEM_SET_VERBOSITY_BITS(i32, i32) #1

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
