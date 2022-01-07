; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32, i64, i32, i32*, i32, %struct.sas_ha_struct*, i32 }
%struct.sas_ha_struct = type { %struct.sas_ha_struct*, %struct.sas_ha_struct*, %struct.pm8001_hba_info* }
%struct.pci_dev = type { i32 }

@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@PM8001_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pm8001_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.sas_ha_struct* %8, %struct.sas_ha_struct** %3, align 8
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %10 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %9, i32 0, i32 2
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  store %struct.pm8001_hba_info* %11, %struct.pm8001_hba_info** %4, align 8
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %13 = call i32 @sas_unregister_ha(%struct.sas_ha_struct* %12)
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %15 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sas_remove_host(i32 %16)
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 6
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %22, align 8
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %25 = call i32 %23(%struct.pm8001_hba_info* %24, i32 255)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %27, align 8
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %30 = call i32 %28(%struct.pm8001_hba_info* %29)
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %32 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.sas_ha_struct* %34)
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @scsi_host_put(i32 %38)
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %41 = call i32 @pm8001_free(%struct.pm8001_hba_info* %40)
  %42 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %43 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %42, i32 0, i32 1
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %43, align 8
  %45 = call i32 @kfree(%struct.sas_ha_struct* %44)
  %46 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %47 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %46, i32 0, i32 0
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %47, align 8
  %49 = call i32 @kfree(%struct.sas_ha_struct* %48)
  %50 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %51 = call i32 @kfree(%struct.sas_ha_struct* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_release_regions(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_disable_device(%struct.pci_dev* %54)
  ret void
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_remove_host(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.sas_ha_struct*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pm8001_free(%struct.pm8001_hba_info*) #1

declare dso_local i32 @kfree(%struct.sas_ha_struct*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
