; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_mcu.c_mt76pci_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_mcu.c_mt76pci_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.mt76x02_fw_header = type { i32, i32, i32, i32, i32 }

@MT7662_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Firmware Version: %d.%d.%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Build: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Build Time: %.16s\0A\00", align 1
@MT_MCU_PCIE_REMAP_BASE4 = common dso_local global i32 0, align 4
@MT_MCU_ILM_OFFSET = common dso_local global i32 0, align 4
@MT_MCU_ILM_ADDR = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@MT_MCU_DLM_ADDR_E3 = common dso_local global i32 0, align 4
@MT_MCU_DLM_ADDR = common dso_local global i32 0, align 4
@MT_MCU_DLM_OFFSET = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_2 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_2_XTAL_OPTION = common dso_local global i32 0, align 4
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@MT_MCU_INT_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Firmware failed to start\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Firmware running!\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76pci_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76pci_load_firmware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.mt76x02_fw_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %11 = load i32, i32* @MT7662_FIRMWARE, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @request_firmware(%struct.firmware** %4, i32 %11, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %195

21:                                               ; preds = %1
  %22 = load %struct.firmware*, %struct.firmware** %4, align 8
  %23 = icmp ne %struct.firmware* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.firmware*, %struct.firmware** %4, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 20
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %24, %21
  br label %185

36:                                               ; preds = %29
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.mt76x02_fw_header*
  store %struct.mt76x02_fw_header* %40, %struct.mt76x02_fw_header** %5, align 8
  store i32 20, i32* %6, align 4
  %41 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %42 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %48 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.firmware*, %struct.firmware** %4, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %185

59:                                               ; preds = %36
  %60 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %61 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 12
  %70 = and i32 %69, 15
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 15
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 15
  %76 = call i32 (i32, i8*, ...) @dev_info(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %75)
  %77 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %78 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i32, i8*, ...) @dev_info(i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %92 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @dev_info(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.firmware*, %struct.firmware** %4, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 20
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %8, align 8
  %100 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %101 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %105 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %106 = load i32, i32* @MT_MCU_ILM_OFFSET, align 4
  %107 = call i32 @mt76_wr(%struct.mt76x02_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %109 = load i32, i32* @MT_MCU_ILM_ADDR, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %108, i32 %109, i32* %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %114, 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 %115
  store i32* %117, i32** %8, align 8
  %118 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %119 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %123 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %122)
  %124 = load i64, i64* @MT76XX_REV_E3, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %59
  %127 = load i32, i32* @MT_MCU_DLM_ADDR_E3, align 4
  store i32 %127, i32* %9, align 4
  br label %130

128:                                              ; preds = %59
  %129 = load i32, i32* @MT_MCU_DLM_ADDR, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %132 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %133 = load i32, i32* @MT_MCU_DLM_OFFSET, align 4
  %134 = call i32 @mt76_wr(%struct.mt76x02_dev* %131, i32 %132, i32 %133)
  %135 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %135, i32 %136, i32* %137, i32 %138)
  %140 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %141 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %142 = call i32 @mt76_wr(%struct.mt76x02_dev* %140, i32 %141, i32 0)
  %143 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %144 = load i32, i32* @MT_EE_NIC_CONF_2, align 4
  %145 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %143, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* @MT_EE_NIC_CONF_2_XTAL_OPTION, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @FIELD_GET(i32 %146, i32 %147)
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %155

150:                                              ; preds = %130
  %151 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %152 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %153 = call i32 @BIT(i32 30)
  %154 = call i32 @mt76_set(%struct.mt76x02_dev* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %130
  %156 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %157 = load i32, i32* @MT_MCU_INT_LEVEL, align 4
  %158 = call i32 @mt76_wr(%struct.mt76x02_dev* %156, i32 %157, i32 2)
  %159 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %160 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %161 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %159, i32 %160, i32 1, i32 1, i32 200)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %155
  %164 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %165 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %169 = load %struct.firmware*, %struct.firmware** %4, align 8
  %170 = call i32 @release_firmware(%struct.firmware* %169)
  %171 = load i32, i32* @ETIMEDOUT, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %195

173:                                              ; preds = %155
  %174 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %175 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %176 = call i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev* %174, %struct.mt76x02_fw_header* %175)
  %177 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @dev_info(i32 %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %182 = load %struct.firmware*, %struct.firmware** %4, align 8
  %183 = call i32 @release_firmware(%struct.firmware* %182)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %195

185:                                              ; preds = %58, %35
  %186 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %187 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_err(i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %191 = load %struct.firmware*, %struct.firmware** %4, align 8
  %192 = call i32 @release_firmware(%struct.firmware* %191)
  %193 = load i32, i32* @ENOENT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %185, %173, %163, %19
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, i32*, i32) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev*, %struct.mt76x02_fw_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
