; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_I_T_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_I_T_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.pm8001_hba_info = type { i32 }
%struct.sas_phy = type { i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"phy reset failed for device %x\0Awith rc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"task abort failed %x\0Awith rc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" for device[%x]:rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_I_T_nexus_reset(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_device*, align 8
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %10 = icmp ne %struct.domain_device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 0
  %14 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %15 = icmp ne %struct.pm8001_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %11
  %20 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %21 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %20, i32 0, i32 0
  %22 = load %struct.pm8001_device*, %struct.pm8001_device** %21, align 8
  store %struct.pm8001_device* %22, %struct.pm8001_device** %5, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %24 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %23)
  store %struct.pm8001_hba_info* %24, %struct.pm8001_hba_info** %6, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %26 = call %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %25)
  store %struct.sas_phy* %26, %struct.sas_phy** %7, align 8
  %27 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %28 = call i64 @dev_is_sata(%struct.domain_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %19
  %31 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %32 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %79

35:                                               ; preds = %30
  %36 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %37 = call i32 @sas_phy_reset(%struct.sas_phy* %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %42 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %43 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pm8001_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %41, i32 %46)
  %48 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %48, i32* %4, align 4
  br label %79

49:                                               ; preds = %35
  %50 = call i32 @msleep(i32 2000)
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %52 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %53 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %54 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %51, %struct.pm8001_device* %52, %struct.domain_device* %53, i32 1, i32 0)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %59 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %60 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %58, i32 %63)
  %65 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %49
  br label %71

67:                                               ; preds = %19
  %68 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %69 = call i32 @sas_phy_reset(%struct.sas_phy* %68, i32 1)
  store i32 %69, i32* %4, align 4
  %70 = call i32 @msleep(i32 2000)
  br label %71

71:                                               ; preds = %67, %66
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %73 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %74 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %72, i32 %77)
  br label %79

79:                                               ; preds = %71, %40, %34
  %80 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %81 = call i32 @sas_put_local_phy(%struct.sas_phy* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local i32 @sas_phy_reset(%struct.sas_phy*, i32) #1

declare dso_local i32 @PM8001_EH_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info*, %struct.pm8001_device*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @sas_put_local_phy(%struct.sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
