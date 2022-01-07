; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_sbus_esp_send_dma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_sbus_esp_send_dma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64, i32, i64 }

@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@FAS_RLO = common dso_local global i32 0, align 4
@FAS_RHI = common dso_local global i32 0, align 4
@DMA_SCSI_DISAB = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@DMA_ST_WRITE = common dso_local global i32 0, align 4
@DMA_COUNT = common dso_local global i32 0, align 4
@DMA_ADDR = common dso_local global i32 0, align 4
@DMA_CSR = common dso_local global i32 0, align 4
@dvmaesc1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @sbus_esp_send_dma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbus_esp_send_dma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @ESP_CMD_DMA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.esp*, %struct.esp** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  %26 = load i32, i32* @ESP_TCLOW, align 4
  %27 = call i32 @sbus_esp_write8(%struct.esp* %22, i32 %25, i32 %26)
  %28 = load %struct.esp*, %struct.esp** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load i32, i32* @ESP_TCMED, align 4
  %33 = call i32 @sbus_esp_write8(%struct.esp* %28, i32 %31, i32 %32)
  %34 = load %struct.esp*, %struct.esp** %7, align 8
  %35 = getelementptr inbounds %struct.esp, %struct.esp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FASHME, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %6
  %40 = load %struct.esp*, %struct.esp** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = load i32, i32* @FAS_RLO, align 4
  %45 = call i32 @sbus_esp_write8(%struct.esp* %40, i32 %43, i32 %44)
  %46 = load %struct.esp*, %struct.esp** %7, align 8
  %47 = load i32, i32* @FAS_RHI, align 4
  %48 = call i32 @sbus_esp_write8(%struct.esp* %46, i32 0, i32 %47)
  %49 = load %struct.esp*, %struct.esp** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @scsi_esp_cmd(%struct.esp* %49, i32 %50)
  %52 = load %struct.esp*, %struct.esp** %7, align 8
  %53 = getelementptr inbounds %struct.esp, %struct.esp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @DMA_SCSI_DISAB, align 4
  %56 = load i32, i32* @DMA_ENABLE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %39
  %63 = load i32, i32* @DMA_ST_WRITE, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %71

66:                                               ; preds = %39
  %67 = load i32, i32* @DMA_ST_WRITE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.esp*, %struct.esp** %7, align 8
  %74 = getelementptr inbounds %struct.esp, %struct.esp* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DMA_COUNT, align 4
  %77 = call i32 @dma_write32(i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @DMA_ADDR, align 4
  %80 = call i32 @dma_write32(i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @DMA_CSR, align 4
  %83 = call i32 @dma_write32(i32 %81, i32 %82)
  br label %128

84:                                               ; preds = %6
  %85 = load i32, i32* @DMA_CSR, align 4
  %86 = call i32 @dma_read32(i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* @DMA_ENABLE, align 4
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @DMA_ST_WRITE, align 4
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* @DMA_ST_WRITE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @DMA_CSR, align 4
  %104 = call i32 @dma_write32(i32 %102, i32 %103)
  %105 = load %struct.esp*, %struct.esp** %7, align 8
  %106 = getelementptr inbounds %struct.esp, %struct.esp* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @dvmaesc1, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %101
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = add i32 %113, 16
  %115 = call i32 @PAGE_ALIGN(i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* @DMA_COUNT, align 4
  %120 = call i32 @dma_write32(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %101
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @DMA_ADDR, align 4
  %124 = call i32 @dma_write32(i32 %122, i32 %123)
  %125 = load %struct.esp*, %struct.esp** %7, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @scsi_esp_cmd(%struct.esp* %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %71
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sbus_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @dma_write32(i32, i32) #1

declare dso_local i32 @dma_read32(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
