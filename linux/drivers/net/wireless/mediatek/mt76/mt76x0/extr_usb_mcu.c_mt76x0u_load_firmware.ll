; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0u_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0u_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.mt76x02_fw_header = type { i32, i32, i32, i32, i32 }

@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@MT_MCU_IVB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\0A\00", align 1
@MT_USB_DMA_CFG_RX_BULK_AGG_TOUT = common dso_local global i32 0, align 4
@MT_FCE_PSE_CTRL = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_BASE_PTR = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_MAX_COUNT = common dso_local global i32 0, align 4
@MT_FCE_PDMA_GLOBAL_CONF = common dso_local global i32 0, align 4
@MT_FCE_SKIP_FS = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_UDMA_TX_WL_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid firmware image\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0u_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0u_load_firmware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.mt76x02_fw_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %11 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %12 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mt76_wr(%struct.mt76x02_dev* %9, i32 %10, i32 %13)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = call i64 @mt76x0_firmware_running(%struct.mt76x02_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %167

19:                                               ; preds = %1
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = call i32 @mt76x0_get_firmware(%struct.mt76x02_dev* %20, %struct.firmware** %4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %167

26:                                               ; preds = %19
  %27 = load %struct.firmware*, %struct.firmware** %4, align 8
  %28 = icmp ne %struct.firmware* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.firmware*, %struct.firmware** %4, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 20
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29, %26
  br label %157

41:                                               ; preds = %34
  %42 = load %struct.firmware*, %struct.firmware** %4, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.mt76x02_fw_header*
  store %struct.mt76x02_fw_header* %45, %struct.mt76x02_fw_header** %5, align 8
  %46 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %47 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %157

53:                                               ; preds = %41
  store i32 20, i32* %6, align 4
  %54 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %55 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %61 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.firmware*, %struct.firmware** %4, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %157

72:                                               ; preds = %53
  %73 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %74 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 12
  %83 = and i32 %82, 15
  %84 = load i32, i32* %8, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 15
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 15
  %89 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %90 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %94 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86, i32 %88, i32 %92, i32 %95)
  %97 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %98 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %102 = call i32 @mt76_wr(%struct.mt76x02_dev* %101, i32 4100, i32 44)
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %104 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %105 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %106 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, align 4
  %109 = call i32 @FIELD_PREP(i32 %108, i32 32)
  %110 = or i32 %107, %109
  %111 = call i32 @mt76_set(%struct.mt76x02_dev* %103, i32 %104, i32 %110)
  %112 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %113 = call i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev* %112)
  %114 = call i32 @usleep_range(i32 5000, i32 6000)
  %115 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %116 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %117 = call i32 @mt76_wr(%struct.mt76x02_dev* %115, i32 %116, i32 1)
  %118 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %119 = load i32, i32* @MT_TX_CPU_FROM_FCE_BASE_PTR, align 4
  %120 = call i32 @mt76_wr(%struct.mt76x02_dev* %118, i32 %119, i32 4194864)
  %121 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %122 = load i32, i32* @MT_TX_CPU_FROM_FCE_MAX_COUNT, align 4
  %123 = call i32 @mt76_wr(%struct.mt76x02_dev* %121, i32 %122, i32 1)
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %125 = load i32, i32* @MT_FCE_PDMA_GLOBAL_CONF, align 4
  %126 = call i32 @mt76_wr(%struct.mt76x02_dev* %124, i32 %125, i32 68)
  %127 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %128 = load i32, i32* @MT_FCE_SKIP_FS, align 4
  %129 = call i32 @mt76_wr(%struct.mt76x02_dev* %127, i32 %128, i32 3)
  %130 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %131 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %132 = call i32 @mt76_rr(%struct.mt76x02_dev* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @MT_USB_DMA_CFG_UDMA_TX_WL_DROP, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %137 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @mt76_wr(%struct.mt76x02_dev* %136, i32 %137, i32 %138)
  %140 = load i32, i32* @MT_USB_DMA_CFG_UDMA_TX_WL_DROP, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %145 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @mt76_wr(%struct.mt76x02_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %149 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %150 = call i32 @mt76x0u_upload_firmware(%struct.mt76x02_dev* %148, %struct.mt76x02_fw_header* %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.firmware*, %struct.firmware** %4, align 8
  %152 = call i32 @release_firmware(%struct.firmware* %151)
  %153 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %154 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %155 = call i32 @mt76_wr(%struct.mt76x02_dev* %153, i32 %154, i32 1)
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %167

157:                                              ; preds = %71, %52, %40
  %158 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %159 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_err(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %163 = load %struct.firmware*, %struct.firmware** %4, align 8
  %164 = call i32 @release_firmware(%struct.firmware* %163)
  %165 = load i32, i32* @ENOENT, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %157, %72, %24, %18
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i64 @mt76x0_firmware_running(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_get_firmware(%struct.mt76x02_dev*, %struct.firmware**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0u_upload_firmware(%struct.mt76x02_dev*, %struct.mt76x02_fw_header*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
