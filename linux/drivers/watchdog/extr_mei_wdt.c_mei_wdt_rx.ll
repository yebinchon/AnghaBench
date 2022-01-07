; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.mei_wdt = type { i64, i32, i32, i32 }
%struct.mei_wdt_start_response = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"failure in recv %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"recv small data %d\0A\00", align 1
@MEI_MANAGEMENT_CONTROL = common dso_local global i64 0, align 8
@MEI_MC_VERSION_NUMBER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"wrong command received\0A\00", align 1
@MEI_MC_START_WD_TIMER_RES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"unsupported command %d :%s[%d]\0A\00", align 1
@MEI_WDT_RUNNING = common dso_local global i64 0, align 8
@MEI_WDT_WDSTATE_NOT_REQUIRED = common dso_local global i32 0, align 4
@MEI_WDT_NOT_REQUIRED = common dso_local global i8* null, align 8
@MEI_WDT_PROBE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"not in correct state %s[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl_device*)* @mei_wdt_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_wdt_rx(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.mei_wdt*, align 8
  %4 = alloca %struct.mei_wdt_start_response, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %7 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %8 = call %struct.mei_wdt* @mei_cldev_get_drvdata(%struct.mei_cl_device* %7)
  store %struct.mei_wdt* %8, %struct.mei_wdt** %3, align 8
  store i64 32, i64* %5, align 8
  %9 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %10 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = bitcast %struct.mei_wdt_start_response* %4 to i32*
  %13 = call i32 @mei_cldev_recv(i32 %11, i32* %12, i64 32)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %18 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %136

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %136

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %31 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %136

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MEI_MANAGEMENT_CONTROL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEI_MC_VERSION_NUMBER, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %48 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %136

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MEI_MC_START_WD_TIMER_RES, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %58 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %63 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mei_wdt_state_str(i64 %64)
  %66 = sext i32 %65 to i64
  %67 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %68 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %61, i64 %66, i64 %69)
  br label %136

71:                                               ; preds = %50
  %72 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %73 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MEI_WDT_RUNNING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MEI_WDT_WDSTATE_NOT_REQUIRED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i8*, i8** @MEI_WDT_NOT_REQUIRED, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %87 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %89 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %88, i32 0, i32 2
  %90 = call i32 @schedule_work(i32* %89)
  br label %91

91:                                               ; preds = %83, %77
  br label %127

92:                                               ; preds = %71
  %93 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %94 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MEI_WDT_PROBE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.mei_wdt_start_response, %struct.mei_wdt_start_response* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MEI_WDT_WDSTATE_NOT_REQUIRED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** @MEI_WDT_NOT_REQUIRED, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %108 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %114

109:                                              ; preds = %98
  %110 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %111 = call i32 @mei_wdt_stop(%struct.mei_wdt* %110)
  %112 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %113 = call i32 @mei_wdt_register(%struct.mei_wdt* %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %136

115:                                              ; preds = %92
  %116 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %117 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %116, i32 0, i32 0
  %118 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %119 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @mei_wdt_state_str(i64 %120)
  %122 = sext i32 %121 to i64
  %123 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %124 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %122, i64 %125)
  br label %127

127:                                              ; preds = %115, %91
  %128 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %129 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %128, i32 0, i32 1
  %130 = call i32 @completion_done(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %134 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %133, i32 0, i32 1
  %135 = call i32 @complete(i32* %134)
  br label %136

136:                                              ; preds = %16, %24, %29, %46, %56, %114, %132, %127
  ret void
}

declare dso_local %struct.mei_wdt* @mei_cldev_get_drvdata(%struct.mei_cl_device*) #1

declare dso_local i32 @mei_cldev_recv(i32, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @mei_wdt_state_str(i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mei_wdt_stop(%struct.mei_wdt*) #1

declare dso_local i32 @mei_wdt_register(%struct.mei_wdt*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
