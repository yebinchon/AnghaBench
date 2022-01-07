; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_send_dma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_send_dma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.pci_esp_priv = type { i64 }

@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_DMA_CMD_DIR = common dso_local global i32 0, align 4
@ESP_DMA_CMD_IDLE = common dso_local global i32 0, align 4
@ESP_DMA_CMD = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@ESP_CONFIG2_FENAB = common dso_local global i32 0, align 4
@ESP_TCHI = common dso_local global i32 0, align 4
@ESP_DMA_STC = common dso_local global i32 0, align 4
@ESP_DMA_SPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"start dma addr[%x] count[%d:%d]\0A\00", align 1
@ESP_DMA_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @pci_esp_send_dma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_esp_send_dma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_esp_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.esp*, %struct.esp** %7, align 8
  %16 = call %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp* %15)
  store %struct.pci_esp_priv* %16, %struct.pci_esp_priv** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @ESP_CMD_DMA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %13, align 8
  %25 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, i32* @ESP_DMA_CMD_DIR, align 4
  %30 = load i32, i32* %14, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %6
  %33 = load %struct.esp*, %struct.esp** %7, align 8
  %34 = load i32, i32* @ESP_DMA_CMD_IDLE, align 4
  %35 = load i32, i32* %14, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ESP_DMA_CMD, align 4
  %38 = call i32 @pci_esp_write8(%struct.esp* %33, i32 %36, i32 %37)
  %39 = load %struct.esp*, %struct.esp** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = load i32, i32* @ESP_TCLOW, align 4
  %44 = call i32 @pci_esp_write8(%struct.esp* %39, i32 %42, i32 %43)
  %45 = load %struct.esp*, %struct.esp** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i32, i32* @ESP_TCMED, align 4
  %50 = call i32 @pci_esp_write8(%struct.esp* %45, i32 %48, i32 %49)
  %51 = load %struct.esp*, %struct.esp** %7, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ESP_CONFIG2_FENAB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %32
  %58 = load %struct.esp*, %struct.esp** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load i32, i32* @ESP_TCHI, align 4
  %63 = call i32 @pci_esp_write8(%struct.esp* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %32
  %65 = load %struct.esp*, %struct.esp** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ESP_DMA_STC, align 4
  %68 = call i32 @pci_esp_write32(%struct.esp* %65, i32 %66, i32 %67)
  %69 = load %struct.esp*, %struct.esp** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ESP_DMA_SPA, align 4
  %72 = call i32 @pci_esp_write32(%struct.esp* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @esp_dma_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load %struct.esp*, %struct.esp** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @scsi_esp_cmd(%struct.esp* %77, i32 %78)
  %80 = load %struct.esp*, %struct.esp** %7, align 8
  %81 = load i32, i32* @ESP_DMA_CMD_START, align 4
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ESP_DMA_CMD, align 4
  %85 = call i32 @pci_esp_write8(%struct.esp* %80, i32 %83, i32 %84)
  ret void
}

declare dso_local %struct.pci_esp_priv* @pci_esp_get_priv(%struct.esp*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @pci_esp_write32(%struct.esp*, i32, i32) #1

declare dso_local i32 @esp_dma_log(i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
