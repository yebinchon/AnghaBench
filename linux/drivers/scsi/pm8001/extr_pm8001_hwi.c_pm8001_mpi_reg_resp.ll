; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_reg_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_reg_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32, i32*, %struct.pm8001_device* }
%struct.pm8001_device = type { i64, i32 }
%struct.dev_reg_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c" register device is status = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DEVREG_SUCCESS\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DEVREG_FAILURE_OUT_OF_RESOURCE\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"DEVREG_FAILURE_DEVICE_ALREADY_REGISTERED\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"DEVREG_FAILURE_INVALID_PHY_ID\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"DEVREG_FAILURE_PHY_ID_ALREADY_REGISTERED\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"DEVREG_FAILURE_PORT_ID_OUT_OF_RANGE\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"DEVREG_FAILURE_PORT_NOT_VALID_STATE\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"DEVREG_FAILURE_DEVICE_TYPE_NOT_VALID\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"DEVREG_FAILURE_DEVICE_TYPE_NOT_SUPPORTED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_reg_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  %9 = alloca %struct.pm8001_device*, align 8
  %10 = alloca %struct.dev_reg_resp*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr i8, i8* %11, i64 4
  %13 = bitcast i8* %12 to %struct.dev_reg_resp*
  store %struct.dev_reg_resp* %13, %struct.dev_reg_resp** %10, align 8
  %14 = load %struct.dev_reg_resp*, %struct.dev_reg_resp** %10, align 8
  %15 = getelementptr inbounds %struct.dev_reg_resp, %struct.dev_reg_resp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 0
  %20 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %20, i64 %21
  store %struct.pm8001_ccb_info* %22, %struct.pm8001_ccb_info** %8, align 8
  %23 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %24 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %23, i32 0, i32 2
  %25 = load %struct.pm8001_device*, %struct.pm8001_device** %24, align 8
  store %struct.pm8001_device* %25, %struct.pm8001_device** %9, align 8
  %26 = load %struct.dev_reg_resp*, %struct.dev_reg_resp** %10, align 8
  %27 = getelementptr inbounds %struct.dev_reg_resp, %struct.dev_reg_resp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load %struct.dev_reg_resp*, %struct.dev_reg_resp** %10, align 8
  %31 = getelementptr inbounds %struct.dev_reg_resp, %struct.dev_reg_resp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %34, i32 %36)
  %38 = load i64, i64* %5, align 8
  switch i64 %38, label %74 [
    i64 128, label %39
    i64 132, label %46
    i64 135, label %50
    i64 133, label %54
    i64 131, label %58
    i64 130, label %62
    i64 129, label %66
    i64 134, label %70
  ]

39:                                               ; preds = %2
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %40, i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %45 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %78

46:                                               ; preds = %2
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %47, i32 %48)
  br label %78

50:                                               ; preds = %2
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %51, i32 %52)
  br label %78

54:                                               ; preds = %2
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %55, i32 %56)
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %60 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %59, i32 %60)
  br label %78

62:                                               ; preds = %2
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %64 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %65 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %63, i32 %64)
  br label %78

66:                                               ; preds = %2
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %69 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %67, i32 %68)
  br label %78

70:                                               ; preds = %2
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %73 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %71, i32 %72)
  br label %78

74:                                               ; preds = %2
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %76 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %77 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %46, %39
  %79 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %80 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @complete(i32 %81)
  %83 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %84 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %86 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %87, i64 %88)
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
