; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { i32, i32, %struct.Scsi_Host*, %struct.device* }
%struct.Scsi_Host = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"PCI PM not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"PM suspend: disable host failed rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"entering operating state [D%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @hisi_sas_v3_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_v3_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %6, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %15, align 8
  store %struct.hisi_hba* %16, %struct.hisi_hba** %7, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 3
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 2
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %9, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %2
  %33 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %35 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %34, i32 0, i32 0
  %36 = call i64 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %89

39:                                               ; preds = %32
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %41 = call i32 @scsi_block_requests(%struct.Scsi_Host* %40)
  %42 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %44 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %47 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @flush_workqueue(i32 %48)
  %50 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %51 = call i32 @disable_host_v3_hw(%struct.hisi_hba* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %39
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %59 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %60 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %64 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %67 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %89

69:                                               ; preds = %39
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %71 = call i32 @hisi_sas_init_mem(%struct.hisi_hba* %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @pci_choose_state(%struct.pci_dev* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_save_state(%struct.pci_dev* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @pci_set_power_state(%struct.pci_dev* %82, i32 %83)
  %85 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %86 = call i32 @hisi_sas_release_tasks(%struct.hisi_hba* %85)
  %87 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %88 = call i32 @sas_suspend_ha(%struct.sas_ha_struct* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %69, %54, %38, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @scsi_block_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @disable_host_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_init_mem(%struct.hisi_hba*) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @hisi_sas_release_tasks(%struct.hisi_hba*) #1

declare dso_local i32 @sas_suspend_ha(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
