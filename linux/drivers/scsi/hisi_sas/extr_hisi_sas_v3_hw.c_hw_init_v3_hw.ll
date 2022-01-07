; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hw_init_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hw_init_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%union.acpi_object = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hisi_sas_reset_hw failed, rc=%d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"D5918B4B-37AE-4E10-A99F-E5E8A6EF4C1F\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Parse GUID failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSM_FUNC_ERR_HANDLE_MSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Switch over to MSI handling failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @hw_init_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_init_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %12 = call i32 @reset_hw_v3_hw(%struct.hisi_hba* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = call i32 @msleep(i32 100)
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %23 = call i32 @init_reg_v3_hw(%struct.hisi_hba* %22)
  %24 = call i64 @guid_parse(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @ACPI_HANDLE(%struct.device* %32)
  %34 = load i32, i32* @DSM_FUNC_ERR_HANDLE_MSI, align 4
  %35 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %33, i32* %6, i32 0, i32 %34, i32* null)
  store %union.acpi_object* %35, %union.acpi_object** %5, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %37 = icmp ne %union.acpi_object* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %44

41:                                               ; preds = %31
  %42 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %43 = call i32 @ACPI_FREE(%union.acpi_object* %42)
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %26, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @reset_hw_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @init_reg_v3_hw(%struct.hisi_hba*) #1

declare dso_local i64 @guid_parse(i8*, i32*) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
