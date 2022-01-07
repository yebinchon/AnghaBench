; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32* }
%struct.esp = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }

@DMA_CSR = common dso_local global i32 0, align 4
@DMA_INT_ENAB = common dso_local global i32 0, align 4
@dvmahme = common dso_local global i64 0, align 8
@SBUS_ESP_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esp_sbus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.esp* @dev_get_drvdata(i32* %9)
  store %struct.esp* %10, %struct.esp** %3, align 8
  %11 = load %struct.esp*, %struct.esp** %3, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 6
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %4, align 8
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.esp*, %struct.esp** %3, align 8
  %20 = call i32 @scsi_esp_unregister(%struct.esp* %19)
  %21 = load i32, i32* @DMA_CSR, align 4
  %22 = call i32 @dma_read32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DMA_INT_ENAB, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @DMA_CSR, align 4
  %28 = call i32 @dma_write32(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.esp* %30)
  %32 = load %struct.esp*, %struct.esp** %3, align 8
  %33 = getelementptr inbounds %struct.esp, %struct.esp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @dvmahme, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.esp*, %struct.esp** %3, align 8
  %41 = getelementptr inbounds %struct.esp, %struct.esp* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32* %39, i32 16, i32 %42, i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load %struct.esp*, %struct.esp** %3, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SBUS_ESP_REG_SIZE, align 4
  %60 = call i32 @of_iounmap(i32* %55, i32 %58, i32 %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.esp*, %struct.esp** %3, align 8
  %66 = getelementptr inbounds %struct.esp, %struct.esp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @resource_size(i32* %71)
  %73 = call i32 @of_iounmap(i32* %64, i32 %67, i32 %72)
  %74 = load %struct.esp*, %struct.esp** %3, align 8
  %75 = getelementptr inbounds %struct.esp, %struct.esp* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = call i32 @scsi_host_put(%struct.TYPE_2__* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_set_drvdata(i32* %79, i32* null)
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @put_device(i32* %82)
  ret i32 0
}

declare dso_local %struct.esp* @dev_get_drvdata(i32*) #1

declare dso_local i32 @scsi_esp_unregister(%struct.esp*) #1

declare dso_local i32 @dma_read32(i32) #1

declare dso_local i32 @dma_write32(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
