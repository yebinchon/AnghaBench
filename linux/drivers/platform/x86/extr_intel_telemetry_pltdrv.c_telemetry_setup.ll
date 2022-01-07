; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.platform_device = type { i32 }
%struct.telemetry_evtconfig = type { i8*, i8*, i32* }

@PMC_IPC_PMC_TELEMTRY = common dso_local global i32 0, align 4
@IOSS_TELEM_INFO_READ = common dso_local global i32 0, align 4
@IOSS_TELEM_READ_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IOSS TELEM_INFO Read Failed\0A\00", align 1
@TELEM_INFO_SRAMEVTS_MASK = common dso_local global i32 0, align 4
@TELEM_INFO_SRAMEVTS_SHIFT = common dso_local global i32 0, align 4
@TELEM_INFO_NENABLES_MASK = common dso_local global i32 0, align 4
@TELEM_MAX_EVENTS_SRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"IOSS:Insufficient Space for SRAM Trace\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SRAM Events %d; Event Regs %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.TYPE_6__* null, align 8
@IPC_PUNIT_BIOS_READ_TELE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"PSS TELEM_INFO Read Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"PSS:Insufficient Space for SRAM Trace\0A\00", align 1
@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i8* null, align 8
@TELEM_SAMPLING_DEFAULT_PERIOD = common dso_local global i8* null, align 8
@TELEM_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"TELEMETRY Setup Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @telemetry_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_setup(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.telemetry_evtconfig, align 8
  %5 = alloca %struct.telemetry_evtconfig, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @PMC_IPC_PMC_TELEMTRY, align 4
  %11 = load i32, i32* @IOSS_TELEM_INFO_READ, align 4
  %12 = load i32, i32* @IOSS_TELEM_READ_WORD, align 4
  %13 = call i32 @intel_pmc_ipc_command(i32 %10, i32 %11, i32* null, i32 0, i32* %6, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %2, align 4
  br label %126

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TELEM_INFO_SRAMEVTS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @TELEM_INFO_SRAMEVTS_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @TELEM_INFO_NENABLES_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TELEM_MAX_EVENTS_SRAM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TELEM_MAX_EVENTS_SRAM, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33, %21
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %126

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @TELEM_MIN_PERIOD(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @TELEM_MAX_PERIOD(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* @IPC_PUNIT_BIOS_READ_TELE_INFO, align 4
  %60 = call i32 @intel_punit_ipc_command(i32 %59, i32 0, i32 0, i32* null, i32* %6)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %126

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @TELEM_INFO_SRAMEVTS_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @TELEM_INFO_SRAMEVTS_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @TELEM_INFO_SRAMEVTS_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @TELEM_MAX_EVENTS_SRAM, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @TELEM_MAX_EVENTS_SRAM, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80, %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %126

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = call i8* @TELEM_MIN_PERIOD(i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i8* @TELEM_MAX_PERIOD(i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %4, i32 0, i32 2
  store i32* null, i32** %106, align 8
  %107 = load i8*, i8** @TELEM_MAX_OS_ALLOCATED_EVENTS, align 8
  %108 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %4, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** @TELEM_SAMPLING_DEFAULT_PERIOD, align 8
  %110 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %4, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load i8*, i8** @TELEM_MAX_OS_ALLOCATED_EVENTS, align 8
  %113 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** @TELEM_SAMPLING_DEFAULT_PERIOD, align 8
  %115 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %5, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* @TELEM_RESET, align 4
  %117 = call i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %4, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8 %5, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %95
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %120, %84, %63, %37, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @TELEM_MIN_PERIOD(i32) #1

declare dso_local i8* @TELEM_MAX_PERIOD(i32) #1

declare dso_local i32 @intel_punit_ipc_command(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @telemetry_setup_evtconfig(%struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, %struct.telemetry_evtconfig* byval(%struct.telemetry_evtconfig) align 8, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
