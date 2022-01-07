; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }
%struct.platform_device = type { i32*, i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.esp = type { i64, i32, i32, i32, i32, i32*, i32*, %struct.Scsi_Host* }

@scsi_esp_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sbus_esp_ops = common dso_local global i32 0, align 4
@ESP_FLAG_WIDE_CAPABLE = common dso_local global i32 0, align 4
@dvmaesc1 = common dso_local global i64 0, align 8
@DMA_CSR = common dso_local global i32 0, align 4
@DMA_RST_SCSI = common dso_local global i32 0, align 4
@SBUS_ESP_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.platform_device*, i32)* @esp_sbus_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_probe_one(%struct.platform_device* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_host_template*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.esp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.scsi_host_template* @scsi_esp_template, %struct.scsi_host_template** %8, align 8
  %13 = load %struct.scsi_host_template*, %struct.scsi_host_template** %8, align 8
  %14 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %13, i32 48)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %9, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %18 = icmp ne %struct.Scsi_Host* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %135

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 16, i32 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %28 = call %struct.esp* @shost_priv(%struct.Scsi_Host* %27)
  store %struct.esp* %28, %struct.esp** %10, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %30 = load %struct.esp*, %struct.esp** %10, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 7
  store %struct.Scsi_Host* %29, %struct.Scsi_Host** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load %struct.esp*, %struct.esp** %10, align 8
  %35 = getelementptr inbounds %struct.esp, %struct.esp* %34, i32 0, i32 6
  store i32* %33, i32** %35, align 8
  %36 = load %struct.esp*, %struct.esp** %10, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 5
  store i32* @sbus_esp_ops, i32** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @ESP_FLAG_WIDE_CAPABLE, align 4
  %42 = load %struct.esp*, %struct.esp** %10, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %20
  %47 = load %struct.esp*, %struct.esp** %10, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %49 = call i32 @esp_sbus_setup_dma(%struct.esp* %47, %struct.platform_device* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %132

53:                                               ; preds = %46
  %54 = load %struct.esp*, %struct.esp** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @esp_sbus_map_regs(%struct.esp* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %132

60:                                               ; preds = %53
  %61 = load %struct.esp*, %struct.esp** %10, align 8
  %62 = call i32 @esp_sbus_map_command_block(%struct.esp* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %117

66:                                               ; preds = %60
  %67 = load %struct.esp*, %struct.esp** %10, align 8
  %68 = call i32 @esp_sbus_register_irq(%struct.esp* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %107

72:                                               ; preds = %66
  %73 = load %struct.esp*, %struct.esp** %10, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %75 = call i32 @esp_sbus_get_props(%struct.esp* %73, %struct.platform_device* %74)
  %76 = load %struct.esp*, %struct.esp** %10, align 8
  %77 = getelementptr inbounds %struct.esp, %struct.esp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @dvmaesc1, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load i32, i32* @DMA_CSR, align 4
  %83 = call i32 @dma_read32(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @DMA_RST_SCSI, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* @DMA_CSR, align 4
  %89 = call i32 @dma_write32(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  %91 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 1
  %93 = load %struct.esp*, %struct.esp** %10, align 8
  %94 = call i32 @dev_set_drvdata(i32* %92, %struct.esp* %93)
  %95 = load %struct.esp*, %struct.esp** %10, align 8
  %96 = call i32 @scsi_esp_register(%struct.esp* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %101

100:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %137

101:                                              ; preds = %99
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %103 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.esp*, %struct.esp** %10, align 8
  %106 = call i32 @free_irq(i32 %104, %struct.esp* %105)
  br label %107

107:                                              ; preds = %101, %71
  %108 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = load %struct.esp*, %struct.esp** %10, align 8
  %111 = getelementptr inbounds %struct.esp, %struct.esp* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.esp*, %struct.esp** %10, align 8
  %114 = getelementptr inbounds %struct.esp, %struct.esp* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dma_free_coherent(i32* %109, i32 16, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %107, %65
  %118 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load %struct.esp*, %struct.esp** %10, align 8
  %128 = getelementptr inbounds %struct.esp, %struct.esp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SBUS_ESP_REG_SIZE, align 4
  %131 = call i32 @of_iounmap(i32* %126, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117, %59, %52
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %134 = call i32 @scsi_host_put(%struct.Scsi_Host* %133)
  br label %135

135:                                              ; preds = %132, %19
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %100
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.esp* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @esp_sbus_setup_dma(%struct.esp*, %struct.platform_device*) #1

declare dso_local i32 @esp_sbus_map_regs(%struct.esp*, i32) #1

declare dso_local i32 @esp_sbus_map_command_block(%struct.esp*) #1

declare dso_local i32 @esp_sbus_register_irq(%struct.esp*) #1

declare dso_local i32 @esp_sbus_get_props(%struct.esp*, %struct.platform_device*) #1

declare dso_local i32 @dma_read32(i32) #1

declare dso_local i32 @dma_write32(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.esp*) #1

declare dso_local i32 @scsi_esp_register(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
