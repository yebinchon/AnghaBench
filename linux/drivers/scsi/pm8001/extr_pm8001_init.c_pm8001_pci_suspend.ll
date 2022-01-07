; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32, i64, i32, i32*, i32, %struct.sas_ha_struct*, i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pci_dev = type { i32, i32, i32 }

@pm8001_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c" PCI PM not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"pdev=0x%p, slot=%s, entering operating state [D%d]\0A\00", align 1
@PM8001_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pm8001_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_pci_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %6, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 0
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %14, align 8
  store %struct.pm8001_hba_info* %15, %struct.pm8001_hba_info** %7, align 8
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %17 = call i32 @sas_suspend_ha(%struct.sas_ha_struct* %16)
  %18 = load i32, i32* @pm8001_wq, align 4
  %19 = call i32 @flush_workqueue(i32 %18)
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @scsi_block_requests(i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %36, align 8
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %39 = call i32 %37(%struct.pm8001_hba_info* %38, i32 255)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %41, align 8
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %44 = call i32 %42(%struct.pm8001_hba_info* %43)
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %49 = call i32 @free_irq(i32 %47, %struct.sas_ha_struct* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pci_choose_state(%struct.pci_dev* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @pm8001_printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.pci_dev* %53, i32 %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_save_state(%struct.pci_dev* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_disable_device(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pci_set_power_state(%struct.pci_dev* %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %34, %28
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sas_suspend_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.sas_ha_struct*) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, %struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
