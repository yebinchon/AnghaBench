; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_load_rom_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_load_rom_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_patch_header = type { i32 }
%struct.firmware = type { i32, i64 }

@MT_MCU_SEMAPHORE_03 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not get hardware semaphore for ROM PATCH\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@MT_MCU_CLOCK_CTL = common dso_local global i32 0, align 4
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ROM patch already applied\0A\00", align 1
@MT7662_ROM_PATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ROM patch build: %.15s\0A\00", align 1
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
@MCU_ROM_PATCH_MAX_PAYLOAD = common dso_local global i32 0, align 4
@MT76U_MCU_ROM_PATCH_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to load ROM patch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2u_mcu_load_rom_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2u_mcu_load_rom_patch(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_patch_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = call i32 @is_mt7612(%struct.mt76x02_dev* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_MCU_SEMAPHORE_03, align 4
  %21 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %19, i32 %20, i32 1, i32 1, i32 600)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %185

31:                                               ; preds = %18, %1
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %32)
  %34 = load i64, i64* @MT76XX_REV_E3, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @BIT(i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @MT_MCU_CLOCK_CTL, align 4
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %31
  %40 = call i32 @BIT(i32 1)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @MT_MCU_COM_REG0, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mt76_rr(%struct.mt76x02_dev* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_info(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %185

58:                                               ; preds = %45, %42
  %59 = load i32, i32* @MT7662_ROM_PATCH, align 4
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @request_firmware(%struct.firmware** %9, i32 %59, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %185

69:                                               ; preds = %58
  %70 = load %struct.firmware*, %struct.firmware** %9, align 8
  %71 = icmp ne %struct.firmware* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.firmware*, %struct.firmware** %9, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.firmware*, %struct.firmware** %9, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ule i64 %81, 4
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %72, %69
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %174

91:                                               ; preds = %77
  %92 = load %struct.firmware*, %struct.firmware** %9, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.mt76x02_patch_header*
  store %struct.mt76x02_patch_header* %95, %struct.mt76x02_patch_header** %5, align 8
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mt76x02_patch_header*, %struct.mt76x02_patch_header** %5, align 8
  %101 = getelementptr inbounds %struct.mt76x02_patch_header, %struct.mt76x02_patch_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_info(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %105 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, align 4
  %108 = call i32 @FIELD_PREP(i32 %107, i32 32)
  %109 = or i32 %106, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %111 = load i32, i32* @CFG, align 4
  %112 = load i32, i32* @MT_USB_U3DMA_CFG, align 4
  %113 = call i32 @MT_VEND_ADDR(i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @mt76_wr(%struct.mt76x02_dev* %110, i32 %113, i32 %114)
  %116 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %117 = call i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev* %116)
  %118 = call i32 @usleep_range(i32 5000, i32 10000)
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
  %135 = load %struct.firmware*, %struct.firmware** %9, align 8
  %136 = getelementptr inbounds %struct.firmware, %struct.firmware* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 4
  %139 = load %struct.firmware*, %struct.firmware** %9, align 8
  %140 = getelementptr inbounds %struct.firmware, %struct.firmware* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = sub i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @MCU_ROM_PATCH_MAX_PAYLOAD, align 4
  %146 = load i32, i32* @MT76U_MCU_ROM_PATCH_OFFSET, align 4
  %147 = call i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev* %134, i64 %138, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %91
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %10, align 4
  br label %174

153:                                              ; preds = %91
  %154 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %155 = call i32 @mt76x2u_mcu_enable_patch(%struct.mt76x02_dev* %154)
  %156 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %157 = call i32 @mt76x2u_mcu_reset_wmt(%struct.mt76x02_dev* %156)
  %158 = call i32 @mdelay(i32 20)
  %159 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %159, i32 %160, i32 %161, i32 %162, i32 100)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %153
  %166 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* @ETIMEDOUT, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %165, %153
  br label %174

174:                                              ; preds = %173, %150, %83
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %179 = load i32, i32* @MT_MCU_SEMAPHORE_03, align 4
  %180 = call i32 @mt76_wr(%struct.mt76x02_dev* %178, i32 %179, i32 1)
  br label %181

181:                                              ; preds = %177, %174
  %182 = load %struct.firmware*, %struct.firmware** %9, align 8
  %183 = call i32 @release_firmware(%struct.firmware* %182)
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %67, %52, %23
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @is_mt7612(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @mt76x02u_mcu_fw_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev*, i64, i32, i32, i32) #1

declare dso_local i32 @mt76x2u_mcu_enable_patch(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mcu_reset_wmt(%struct.mt76x02_dev*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
