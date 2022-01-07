; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.asd_ha_struct = type { i32 }

@use_msi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @asd_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.asd_ha_struct* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.asd_ha_struct* %5, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = icmp ne %struct.asd_ha_struct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %11 = call i32 @asd_unregister_sas_ha(%struct.asd_ha_struct* %10)
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = call i32 @asd_disable_ints(%struct.asd_ha_struct* %12)
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %15 = call i32 @asd_remove_dev_attrs(%struct.asd_ha_struct* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.asd_ha_struct* %19)
  %21 = load i64, i64* @use_msi, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %9
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %25 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pci_disable_msi(i32 %26)
  br label %28

28:                                               ; preds = %23, %9
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = call i32 @asd_turn_off_leds(%struct.asd_ha_struct* %29)
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %32 = call i32 @asd_chip_hardrst(%struct.asd_ha_struct* %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = call i32 @asd_free_queues(%struct.asd_ha_struct* %33)
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %36 = call i32 @asd_destroy_ha_caches(%struct.asd_ha_struct* %35)
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %38 = call i32 @asd_unmap_ha(%struct.asd_ha_struct* %37)
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = call i32 @kfree(%struct.asd_ha_struct* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  br label %43

43:                                               ; preds = %28, %8
  ret void
}

declare dso_local %struct.asd_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @asd_unregister_sas_ha(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_disable_ints(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_remove_dev_attrs(%struct.asd_ha_struct*) #1

declare dso_local i32 @free_irq(i32, %struct.asd_ha_struct*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @asd_turn_off_leds(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_chip_hardrst(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_free_queues(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_destroy_ha_caches(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_unmap_ha(%struct.asd_ha_struct*) #1

declare dso_local i32 @kfree(%struct.asd_ha_struct*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
