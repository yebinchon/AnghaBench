; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_dma_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_dma_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.pci_esp_priv = type { i32 }

@ESP_DMA_STAT_ERROR = common dso_local global i32 0, align 4
@ESP_DMA_CMD = common dso_local global i32 0, align 4
@ESP_DMA_CMD_MASK = common dso_local global i32 0, align 4
@ESP_DMA_CMD_START = common dso_local global i32 0, align 4
@ESP_DMA_CMD_ABORT = common dso_local global i32 0, align 4
@ESP_DMA_STAT_ABORT = common dso_local global i32 0, align 4
@ESP_DMA_CMD_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @pci_esp_dma_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_esp_dma_error(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.pci_esp_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  %6 = load %struct.esp*, %struct.esp** %3, align 8
  %7 = call %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp* %6)
  store %struct.pci_esp_priv* %7, %struct.pci_esp_priv** %4, align 8
  %8 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %9 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ESP_DMA_STAT_ERROR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.esp*, %struct.esp** %3, align 8
  %16 = load i32, i32* @ESP_DMA_CMD, align 4
  %17 = call i8* @pci_esp_read8(%struct.esp* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ESP_DMA_CMD_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ESP_DMA_CMD_START, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.esp*, %struct.esp** %3, align 8
  %26 = load i32, i32* @ESP_DMA_CMD_ABORT, align 4
  %27 = load i32, i32* @ESP_DMA_CMD, align 4
  %28 = call i32 @pci_esp_write8(%struct.esp* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %14
  store i32 1, i32* %2, align 4
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %32 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ESP_DMA_STAT_ABORT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.esp*, %struct.esp** %3, align 8
  %39 = load i32, i32* @ESP_DMA_CMD_IDLE, align 4
  %40 = load i32, i32* @ESP_DMA_CMD, align 4
  %41 = call i32 @pci_esp_write8(%struct.esp* %38, i32 %39, i32 %40)
  %42 = load %struct.esp*, %struct.esp** %3, align 8
  %43 = load i32, i32* @ESP_DMA_CMD, align 4
  %44 = call i8* @pci_esp_read8(%struct.esp* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %4, align 8
  %47 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %37, %29
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp*) #1

declare dso_local i8* @pci_esp_read8(%struct.esp*, i32) #1

declare dso_local i32 @pci_esp_write8(%struct.esp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
