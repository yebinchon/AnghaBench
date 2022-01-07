; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_jazz_esp.c_jazz_esp_send_dma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_jazz_esp.c_jazz_esp_send_dma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64 }

@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @jazz_esp_send_dma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jazz_esp_send_dma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ESP_CMD_DMA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.esp*, %struct.esp** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 0
  %23 = and i32 %22, 255
  %24 = load i32, i32* @ESP_TCLOW, align 4
  %25 = call i32 @jazz_esp_write8(%struct.esp* %20, i32 %23, i32 %24)
  %26 = load %struct.esp*, %struct.esp** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load i32, i32* @ESP_TCMED, align 4
  %31 = call i32 @jazz_esp_write8(%struct.esp* %26, i32 %29, i32 %30)
  %32 = load %struct.esp*, %struct.esp** %7, align 8
  %33 = getelementptr inbounds %struct.esp, %struct.esp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @vdma_disable(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %6
  %40 = load %struct.esp*, %struct.esp** %7, align 8
  %41 = getelementptr inbounds %struct.esp, %struct.esp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @DMA_MODE_READ, align 4
  %45 = call i32 @vdma_set_mode(i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %6
  %47 = load %struct.esp*, %struct.esp** %7, align 8
  %48 = getelementptr inbounds %struct.esp, %struct.esp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @DMA_MODE_WRITE, align 4
  %52 = call i32 @vdma_set_mode(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.esp*, %struct.esp** %7, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @vdma_set_addr(i32 %57, i32 %58)
  %60 = load %struct.esp*, %struct.esp** %7, align 8
  %61 = getelementptr inbounds %struct.esp, %struct.esp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @vdma_set_count(i32 %63, i32 %64)
  %66 = load %struct.esp*, %struct.esp** %7, align 8
  %67 = getelementptr inbounds %struct.esp, %struct.esp* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @vdma_enable(i32 %69)
  %71 = load %struct.esp*, %struct.esp** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @scsi_esp_cmd(%struct.esp* %71, i32 %72)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jazz_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @vdma_disable(i32) #1

declare dso_local i32 @vdma_set_mode(i32, i32) #1

declare dso_local i32 @vdma_set_addr(i32, i32) #1

declare dso_local i32 @vdma_set_count(i32, i32) #1

declare dso_local i32 @vdma_enable(i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
