; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { i32, %struct.TYPE_2__*, %struct.device*, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*)* }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"resuming from operating state [D%d]\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"enable device failed during resume (%d)\0A\00", align 1
@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @hisi_sas_v3_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_v3_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %4, align 8
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 0
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %13, align 8
  store %struct.hisi_hba* %14, %struct.hisi_hba** %5, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 3
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 2
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_set_power_state(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load i32, i32* @PCI_D0, align 4
  %32 = call i32 @pci_enable_wake(%struct.pci_dev* %30, i32 %31, i32 0)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_restore_state(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %78

44:                                               ; preds = %1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = call i32 @pci_set_master(%struct.pci_dev* %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %47)
  %49 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %50 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %51 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %54 = call i32 @sas_prep_resume_ha(%struct.sas_ha_struct* %53)
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %56 = call i32 @hw_init_v3_hw(%struct.hisi_hba* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %61 = call i32 @scsi_remove_host(%struct.Scsi_Host* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = call i32 @pci_disable_device(%struct.pci_dev* %62)
  br label %64

64:                                               ; preds = %59, %44
  %65 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %66 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %68, align 8
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %71 = call i32 %69(%struct.hisi_hba* %70)
  %72 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %73 = call i32 @sas_resume_ha(%struct.sas_ha_struct* %72)
  %74 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %75 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %76 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %64, %39
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sas_prep_resume_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @hw_init_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @sas_resume_ha(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
