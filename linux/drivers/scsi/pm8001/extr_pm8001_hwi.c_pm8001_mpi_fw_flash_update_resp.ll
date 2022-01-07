; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_fw_flash_update_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_fw_flash_update_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32, i32*, i32 }
%struct.fw_flash_Update_resp = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c": FLASH_UPDATE_COMPLETE_PENDING_REBOOT\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c": FLASH_UPDATE_IN_PROGRESS\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c": FLASH_UPDATE_HDR_ERR\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c": FLASH_UPDATE_OFFSET_ERR\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c": FLASH_UPDATE_CRC_ERR\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c": FLASH_UPDATE_LENGTH_ERR\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c": FLASH_UPDATE_HW_ERR\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c": FLASH_UPDATE_DNLD_NOT_SUPPORTED\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c": FLASH_UPDATE_DISABLED\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"No matched status = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_fw_flash_update_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fw_flash_Update_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = bitcast i8* %10 to %struct.fw_flash_Update_resp*
  store %struct.fw_flash_Update_resp* %11, %struct.fw_flash_Update_resp** %6, align 8
  %12 = load %struct.fw_flash_Update_resp*, %struct.fw_flash_Update_resp** %6, align 8
  %13 = getelementptr inbounds %struct.fw_flash_Update_resp, %struct.fw_flash_Update_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %16, i32 0, i32 1
  %18 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %18, i64 %19
  store %struct.pm8001_ccb_info* %20, %struct.pm8001_ccb_info** %8, align 8
  %21 = load %struct.fw_flash_Update_resp*, %struct.fw_flash_Update_resp** %6, align 8
  %22 = getelementptr inbounds %struct.fw_flash_Update_resp, %struct.fw_flash_Update_resp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  switch i64 %25, label %62 [
    i64 136, label %26
    i64 130, label %30
    i64 132, label %34
    i64 128, label %38
    i64 135, label %42
    i64 129, label %46
    i64 131, label %50
    i64 133, label %54
    i64 134, label %58
  ]

26:                                               ; preds = %2
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %27, i32 %28)
  br label %67

30:                                               ; preds = %2
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %32 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %31, i32 %32)
  br label %67

34:                                               ; preds = %2
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %36 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %35, i32 %36)
  br label %67

38:                                               ; preds = %2
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %39, i32 %40)
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %43, i32 %44)
  br label %67

46:                                               ; preds = %2
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %47, i32 %48)
  br label %67

50:                                               ; preds = %2
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %51, i32 %52)
  br label %67

54:                                               ; preds = %2
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %55, i32 %56)
  br label %67

58:                                               ; preds = %2
  %59 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %60 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %59, i32 %60)
  br label %67

62:                                               ; preds = %2
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %64)
  %66 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %58, %54, %50, %46, %42, %38, %34, %30, %26
  %68 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %69 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @kfree(i32 %70)
  %72 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %73 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %75 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 8
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %76, i64 %77)
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %80 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @complete(i32 %81)
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
