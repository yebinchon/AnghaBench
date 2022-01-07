; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_fw_header = type { i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, i64 }

@MT76U_MCU_DLM_OFFSET = common dso_local global i32 0, align 4
@MT7662_FIRMWARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Firmware Version: %d.%d.%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Build: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Build Time: %.16s\0A\00", align 1
@MT_USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_AGG_TOUT = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@MT_USB_U3DMA_CFG = common dso_local global i32 0, align 4
@MT_FCE_PSE_CTRL = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_BASE_PTR = common dso_local global i32 0, align 4
@MT_TX_CPU_FROM_FCE_MAX_COUNT = common dso_local global i32 0, align 4
@MT_FCE_PDMA_GLOBAL_CONF = common dso_local global i32 0, align 4
@MT_FCE_SKIP_FS = common dso_local global i32 0, align 4
@MCU_FW_URB_MAX_PAYLOAD = common dso_local global i32 0, align 4
@MT76U_MCU_ILM_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"firmware failed to start\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"firmware running\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2u_mcu_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2u_mcu_load_firmware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x02_fw_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.firmware*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %12 = load i32, i32* @MT76U_MCU_DLM_OFFSET, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MT7662_FIRMWARE, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @request_firmware(%struct.firmware** %11, i32 %13, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %209

23:                                               ; preds = %1
  %24 = load %struct.firmware*, %struct.firmware** %11, align 8
  %25 = icmp ne %struct.firmware* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.firmware*, %struct.firmware** %11, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.firmware*, %struct.firmware** %11, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 20
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %26, %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %205

40:                                               ; preds = %31
  %41 = load %struct.firmware*, %struct.firmware** %11, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.mt76x02_fw_header*
  store %struct.mt76x02_fw_header* %44, %struct.mt76x02_fw_header** %6, align 8
  %45 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %46 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %50 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 20, %54
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load %struct.firmware*, %struct.firmware** %11, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %40
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %205

68:                                               ; preds = %40
  %69 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %70 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = ashr i32 %77, 12
  %79 = and i32 %78, 15
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 15
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 15
  %85 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %84)
  %86 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %87 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %101 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %105 = call i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev* %104)
  %106 = call i32 @usleep_range(i32 5000, i32 10000)
  %107 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %108 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, align 4
  %111 = call i32 @FIELD_PREP(i32 %110, i32 32)
  %112 = or i32 %109, %111
  store i32 %112, i32* %4, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %114 = load i32, i32* @CFG, align 4
  %115 = load i32, i32* @MT_USB_U3DMA_CFG, align 4
  %116 = call i32 @MT_VEND_ADDR(i32 %114, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @mt76_wr(%struct.mt76x02_dev* %113, i32 %116, i32 %117)
  %119 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %120 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %121 = call i32 @mt76_wr(%struct.mt76x02_dev* %119, i32 %120, i32 1)
  %122 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %123 = load i32, i32* @MT_TX_CPU_FROM_FCE_BASE_PTR, align 4
  %124 = call i32 @mt76_wr(%struct.mt76x02_dev* %122, i32 %123, i32 4194864)
  %125 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %126 = load i32, i32* @MT_TX_CPU_FROM_FCE_MAX_COUNT, align 4
  %127 = call i32 @mt76_wr(%struct.mt76x02_dev* %125, i32 %126, i32 1)
  %128 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %129 = load i32, i32* @MT_FCE_PDMA_GLOBAL_CONF, align 4
  %130 = call i32 @mt76_wr(%struct.mt76x02_dev* %128, i32 %129, i32 68)
  %131 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %132 = load i32, i32* @MT_FCE_SKIP_FS, align 4
  %133 = call i32 @mt76_wr(%struct.mt76x02_dev* %131, i32 %132, i32 3)
  %134 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %135 = load %struct.firmware*, %struct.firmware** %11, align 8
  %136 = getelementptr inbounds %struct.firmware, %struct.firmware* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 20
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @MCU_FW_URB_MAX_PAYLOAD, align 4
  %141 = load i32, i32* @MT76U_MCU_ILM_OFFSET, align 4
  %142 = call i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev* %134, i64 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %68
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %7, align 4
  br label %205

148:                                              ; preds = %68
  %149 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %150 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %149)
  %151 = load i64, i64* @MT76XX_REV_E3, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 2048
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %158 = load %struct.firmware*, %struct.firmware** %11, align 8
  %159 = getelementptr inbounds %struct.firmware, %struct.firmware* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 20
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %161, %163
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @MCU_FW_URB_MAX_PAYLOAD, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev* %157, i64 %164, i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %156
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  br label %205

174:                                              ; preds = %156
  %175 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %176 = call i32 @mt76x2u_mcu_load_ivb(%struct.mt76x02_dev* %175)
  %177 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %178 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %179 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %177, i32 %178, i32 1, i32 1, i32 100)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %174
  %182 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dev_err(i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32, i32* @ETIMEDOUT, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %205

189:                                              ; preds = %174
  %190 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %191 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %192 = call i32 @BIT(i32 1)
  %193 = call i32 @mt76_set(%struct.mt76x02_dev* %190, i32 %191, i32 %192)
  %194 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %195 = load i32, i32* @MT_FCE_PSE_CTRL, align 4
  %196 = call i32 @mt76_wr(%struct.mt76x02_dev* %194, i32 %195, i32 1)
  %197 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %198 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %6, align 8
  %199 = call i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev* %197, %struct.mt76x02_fw_header* %198)
  %200 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %201 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @dev_dbg(i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %205

205:                                              ; preds = %189, %181, %171, %145, %65, %37
  %206 = load %struct.firmware*, %struct.firmware** %11, align 8
  %207 = call i32 @release_firmware(%struct.firmware* %206)
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %205, %21
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev*, i64, i32, i32, i32) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mcu_load_ivb(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev*, %struct.mt76x02_fw_header*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
