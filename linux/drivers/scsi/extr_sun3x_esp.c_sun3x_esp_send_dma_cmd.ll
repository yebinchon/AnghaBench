; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3x_esp.c_sun3x_esp_send_dma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3x_esp.c_sun3x_esp_send_dma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }

@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@DMA_CSR = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@DMA_ST_WRITE = common dso_local global i32 0, align 4
@DMA_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @sun3x_esp_send_dma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun3x_esp_send_dma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @ESP_CMD_DMA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.esp*, %struct.esp** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 0
  %24 = and i32 %23, 255
  %25 = load i32, i32* @ESP_TCLOW, align 4
  %26 = call i32 @sun3x_esp_write8(%struct.esp* %21, i32 %24, i32 %25)
  %27 = load %struct.esp*, %struct.esp** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = load i32, i32* @ESP_TCMED, align 4
  %32 = call i32 @sun3x_esp_write8(%struct.esp* %27, i32 %30, i32 %31)
  %33 = load i32, i32* @DMA_CSR, align 4
  %34 = call i32 @dma_read32(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @DMA_ENABLE, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load i32, i32* @DMA_ST_WRITE, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %49

44:                                               ; preds = %6
  %45 = load i32, i32* @DMA_ST_WRITE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DMA_CSR, align 4
  %52 = call i32 @dma_write32(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @DMA_ADDR, align 4
  %55 = call i32 @dma_write32(i32 %53, i32 %54)
  %56 = load %struct.esp*, %struct.esp** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @scsi_esp_cmd(%struct.esp* %56, i32 %57)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sun3x_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @dma_read32(i32) #1

declare dso_local i32 @dma_write32(i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
