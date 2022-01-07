; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { {}*, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_SIM_SENSE = common dso_local global i8 0, align 1
@DASD_SENSE_BIT_0 = common dso_local global i8 0, align 1
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ERP called for successful request - just retry\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ERP failed for the DASD\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"07\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Data recovered during retry with PCI fetch mode active\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"Invalid data - No way to inform application about the possibly incorrect data\00", align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [68 x i8] c"A State change pending condition exists for the subsystem or device\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Busy condition exists for the subsystem or device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_inspect_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_inspect_32(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 1
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_inspect_32, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 6
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @DASD_SIM_SENSE, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = load i8, i8* @DASD_SIM_SENSE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @dasd_3990_erp_handle_sim(%struct.dasd_device* %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 25
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %32 = sext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @dasd_3990_erp_compound_retry(%struct.dasd_ccw_req* %36, i8* %37)
  br label %109

39:                                               ; preds = %26
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 25
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %107 [
    i32 0, label %44
    i32 1, label %48
    i32 2, label %57
    i32 3, label %57
    i32 15, label %60
    i32 16, label %69
    i32 21, label %73
    i32 27, label %82
    i32 28, label %86
    i32 29, label %93
    i32 30, label %100
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* @DBF_DEBUG, align 4
  %46 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %47 = call i32 @DBF_DEV_EVENT(i32 %45, %struct.dasd_device* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %108

48:                                               ; preds = %39
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %55 = load i32, i32* @DASD_CQR_FAILED, align 4
  %56 = call %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req* %54, i32 %55)
  store %struct.dasd_ccw_req* %56, %struct.dasd_ccw_req** %3, align 8
  br label %108

57:                                               ; preds = %39, %39
  %58 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %59 = call %struct.dasd_ccw_req* @dasd_3990_erp_int_req(%struct.dasd_ccw_req* %58)
  store %struct.dasd_ccw_req* %59, %struct.dasd_ccw_req** %3, align 8
  br label %108

60:                                               ; preds = %39
  %61 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %67 = load i32, i32* @DASD_CQR_FAILED, align 4
  %68 = call %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req* %66, i32 %67)
  store %struct.dasd_ccw_req* %68, %struct.dasd_ccw_req** %3, align 8
  br label %108

69:                                               ; preds = %39
  %70 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_10_32(%struct.dasd_ccw_req* %70, i8* %71)
  store %struct.dasd_ccw_req* %72, %struct.dasd_ccw_req** %3, align 8
  br label %108

73:                                               ; preds = %39
  %74 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %75 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %80 = load i32, i32* @DASD_CQR_FAILED, align 4
  %81 = call %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req* %79, i32 %80)
  store %struct.dasd_ccw_req* %81, %struct.dasd_ccw_req** %3, align 8
  br label %108

82:                                               ; preds = %39
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1B_32(%struct.dasd_ccw_req* %83, i8* %84)
  store %struct.dasd_ccw_req* %85, %struct.dasd_ccw_req** %3, align 8
  br label %108

86:                                               ; preds = %39
  %87 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %88 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @dev_emerg(i32* %90, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %92 = call i32 @panic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  br label %108

93:                                               ; preds = %39
  %94 = load i32, i32* @DBF_WARNING, align 4
  %95 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %96 = call i32 @DBF_DEV_EVENT(i32 %94, %struct.dasd_device* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %97, i8* %98)
  store %struct.dasd_ccw_req* %99, %struct.dasd_ccw_req** %3, align 8
  br label %108

100:                                              ; preds = %39
  %101 = load i32, i32* @DBF_WARNING, align 4
  %102 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %103 = call i32 @DBF_DEV_EVENT(i32 %101, %struct.dasd_device* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %104 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %104, i8* %105)
  store %struct.dasd_ccw_req* %106, %struct.dasd_ccw_req** %3, align 8
  br label %108

107:                                              ; preds = %39
  br label %108

108:                                              ; preds = %107, %100, %93, %86, %82, %73, %69, %60, %57, %48, %44
  br label %109

109:                                              ; preds = %108, %35
  %110 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %110
}

declare dso_local i32 @dasd_3990_erp_handle_sim(%struct.dasd_device*, i8*) #1

declare dso_local i32 @dasd_3990_erp_compound_retry(%struct.dasd_ccw_req*, i8*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req*, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_int_req(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_10_32(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1B_32(%struct.dasd_ccw_req*, i8*) #1

declare dso_local i32 @dev_emerg(i32*, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
