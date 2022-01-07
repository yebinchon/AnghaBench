; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_I_T_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_I_T_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@HISI_SAS_INT_ABT_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"I_T nexus reset: internal abort (%d)\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @hisi_sas_I_T_nexus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_I_T_nexus_reset(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %8 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %7)
  store %struct.hisi_hba* %8, %struct.hisi_hba** %4, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %14 = load i32, i32* @HISI_SAS_INT_ABT_DEV, align 4
  %15 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %12, %struct.domain_device* %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %26 = call i32 @hisi_sas_dereg_device(%struct.hisi_hba* %24, %struct.domain_device* %25)
  %27 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %28 = call i64 @dev_is_sata(%struct.domain_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %32 = call i32 @hisi_sas_softreset_ata_disk(%struct.domain_device* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %41 = call i32 @hisi_sas_debug_I_T_nexus_reset(%struct.domain_device* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %39
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %52 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %53 = call i32 @hisi_sas_release_task(%struct.hisi_hba* %51, %struct.domain_device* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %36, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_internal_task_abort(%struct.hisi_hba*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_dereg_device(%struct.hisi_hba*, %struct.domain_device*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_softreset_ata_disk(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_debug_I_T_nexus_reset(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_release_task(%struct.hisi_hba*, %struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
