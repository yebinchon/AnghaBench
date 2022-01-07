; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_esp_priv = type { %struct.esp* }
%struct.esp = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_esp_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_esp_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_esp_priv*, align 8
  %4 = alloca %struct.esp*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.pci_esp_priv* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.pci_esp_priv* %6, %struct.pci_esp_priv** %3, align 8
  %7 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %7, i32 0, i32 0
  %9 = load %struct.esp*, %struct.esp** %8, align 8
  store %struct.esp* %9, %struct.esp** %4, align 8
  %10 = load %struct.esp*, %struct.esp** %4, align 8
  %11 = call i32 @scsi_esp_unregister(%struct.esp* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.esp*, %struct.esp** %4, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.esp* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_set_drvdata(%struct.pci_dev* %17, i32* null)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.esp*, %struct.esp** %4, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.esp*, %struct.esp** %4, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_free_coherent(i32* %20, i32 16, i32 %23, i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load %struct.esp*, %struct.esp** %4, align 8
  %30 = getelementptr inbounds %struct.esp, %struct.esp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_iounmap(%struct.pci_dev* %28, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_regions(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  %37 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %3, align 8
  %38 = call i32 @kfree(%struct.pci_esp_priv* %37)
  %39 = load %struct.esp*, %struct.esp** %4, align 8
  %40 = getelementptr inbounds %struct.esp, %struct.esp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @scsi_host_put(i32 %41)
  ret void
}

declare dso_local %struct.pci_esp_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @scsi_esp_unregister(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pci_esp_priv*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
