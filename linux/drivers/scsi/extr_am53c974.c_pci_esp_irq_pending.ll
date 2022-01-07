; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_irq_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_irq_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.pci_esp_priv = type { i32 }

@ESP_DMA_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dma intr dreg[%02x]\0A\00", align 1
@ESP_DMA_STAT_ERROR = common dso_local global i32 0, align 4
@ESP_DMA_STAT_ABORT = common dso_local global i32 0, align 4
@ESP_DMA_STAT_DONE = common dso_local global i32 0, align 4
@ESP_DMA_STAT_SCSIINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @pci_esp_irq_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_esp_irq_pending(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.pci_esp_priv*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  %5 = load %struct.esp*, %struct.esp** %3, align 8
  %6 = call %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp* %5)
  store %struct.pci_esp_priv* %6, %struct.pci_esp_priv** %4, align 8
  %7 = load %struct.esp*, %struct.esp** %3, align 8
  %8 = load i32, i32* @ESP_DMA_STATUS, align 4
  %9 = call i32 @pci_esp_read8(%struct.esp* %7, i32 %8)
  %10 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %11 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %13 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @esp_dma_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %17 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ESP_DMA_STAT_ERROR, align 4
  %20 = load i32, i32* @ESP_DMA_STAT_ABORT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ESP_DMA_STAT_DONE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ESP_DMA_STAT_SCSIINT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %18, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp*) #1

declare dso_local i32 @pci_esp_read8(%struct.esp*, i32) #1

declare dso_local i32 @esp_dma_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
