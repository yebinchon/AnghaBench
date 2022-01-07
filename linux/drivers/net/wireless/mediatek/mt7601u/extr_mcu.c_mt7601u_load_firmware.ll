; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.mt76_fw_header = type { i32, i32, i32, i32, i32 }
%struct.mt76_fw = type { i32 }

@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@MT7601U_FIRMWARE = common dso_local global i32 0, align 4
@MT_MCU_IVB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\0A\00", align 1
@MT_FCE_PSE_CTRL = common dso_local global i32 0, align 4
@MT_PBF_CFG = common dso_local global i32 0, align 4
@MT_PBF_CFG_TX0Q_EN = common dso_local global i32 0, align 4
@MT_PBF_CFG_TX1Q_EN = common dso_local global i32 0, align 4
@MT_PBF_CFG_TX2Q_EN = common dso_local global i32 0, align 4
@MT_PBF_CFG_TX3Q_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_CLR = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_BASE_PTR = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_MAX_COUNT = common dso_local global i32 0, align 4
@MT_FCE_PDMA_GLOBAL_CONF = common dso_local global i32 0, align 4
@MT_FCE_SKIP_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid firmware image\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_load_firmware(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.mt76_fw_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %10 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %11 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %12 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %9, i32 %10, i32 %13)
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = call i64 @firmware_running(%struct.mt7601u_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MT7601U_FIRMWARE, align 4
  %23 = call i32 @firmware_request_cache(i32 %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %185

24:                                               ; preds = %1
  %25 = load i32, i32* @MT7601U_FIRMWARE, align 4
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @request_firmware(%struct.firmware** %4, i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %185

34:                                               ; preds = %24
  %35 = load %struct.firmware*, %struct.firmware** %4, align 8
  %36 = icmp ne %struct.firmware* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.firmware*, %struct.firmware** %4, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.firmware*, %struct.firmware** %4, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 20
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %37, %34
  br label %176

49:                                               ; preds = %42
  %50 = load %struct.firmware*, %struct.firmware** %4, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.mt76_fw_header*
  store %struct.mt76_fw_header* %53, %struct.mt76_fw_header** %5, align 8
  %54 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %55 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %176

61:                                               ; preds = %49
  store i32 20, i32* %6, align 4
  %62 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %63 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %69 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.firmware*, %struct.firmware** %4, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %176

80:                                               ; preds = %61
  %81 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %82 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 12
  %90 = and i32 %89, 15
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 15
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 15
  %96 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %97 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %101 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_info(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 %95, i32 %99, i32 %102)
  %104 = load %struct.mt76_fw_header*, %struct.mt76_fw_header** %5, align 8
  %105 = getelementptr inbounds %struct.mt76_fw_header, %struct.mt76_fw_header* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %109 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %108, i32 2380, i32 0)
  %110 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %111 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %112 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %110, i32 %111, i32 0)
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %114 = call i32 @mt7601u_vendor_reset(%struct.mt7601u_dev* %113)
  %115 = call i32 @msleep(i32 5)
  %116 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %117 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %116, i32 2628, i32 0)
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %119 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %118, i32 560, i32 541200)
  %120 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %121 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %120, i32 1024, i32 527360)
  %122 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %123 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %122, i32 2048, i32 1)
  %124 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %125 = load i32, i32* @MT_PBF_CFG, align 4
  %126 = load i32, i32* @MT_PBF_CFG_TX0Q_EN, align 4
  %127 = load i32, i32* @MT_PBF_CFG_TX1Q_EN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MT_PBF_CFG_TX2Q_EN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MT_PBF_CFG_TX3Q_EN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @mt7601u_rmw(%struct.mt7601u_dev* %124, i32 %125, i32 0, i32 %132)
  %134 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %135 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %136 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %134, i32 %135, i32 1)
  %137 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %138 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %139 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %140 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %137, i32 %138, i32 %141)
  %143 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %144 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %145 = load i32, i32* @MT_USB_DMA_CFG_TX_CLR, align 4
  %146 = call i32 @mt76_set(%struct.mt7601u_dev* %143, i32 %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @MT_USB_DMA_CFG_TX_CLR, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %152 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %156 = load i32, i32* @MT_TX_CPU_FROM_FCE_BASE_PTR, align 4
  %157 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %155, i32 %156, i32 4194864)
  %158 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %159 = load i32, i32* @MT_TX_CPU_FROM_FCE_MAX_COUNT, align 4
  %160 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %158, i32 %159, i32 1)
  %161 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %162 = load i32, i32* @MT_FCE_PDMA_GLOBAL_CONF, align 4
  %163 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %161, i32 %162, i32 68)
  %164 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %165 = load i32, i32* @MT_FCE_SKIP_FS, align 4
  %166 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %164, i32 %165, i32 3)
  %167 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %168 = load %struct.firmware*, %struct.firmware** %4, align 8
  %169 = getelementptr inbounds %struct.firmware, %struct.firmware* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.mt76_fw*
  %172 = call i32 @mt7601u_upload_firmware(%struct.mt7601u_dev* %167, %struct.mt76_fw* %171)
  store i32 %172, i32* %7, align 4
  %173 = load %struct.firmware*, %struct.firmware** %4, align 8
  %174 = call i32 @release_firmware(%struct.firmware* %173)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %185

176:                                              ; preds = %79, %60, %48
  %177 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %181 = load %struct.firmware*, %struct.firmware** %4, align 8
  %182 = call i32 @release_firmware(%struct.firmware* %181)
  %183 = load i32, i32* @ENOENT, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %176, %80, %32, %18
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i64 @firmware_running(%struct.mt7601u_dev*) #1

declare dso_local i32 @firmware_request_cache(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_vendor_reset(%struct.mt7601u_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mt7601u_rmw(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_upload_firmware(%struct.mt7601u_dev*, %struct.mt76_fw*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
