; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci_mcu.c_mt76x0e_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci_mcu.c_mt76x0e_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_fw_header = type { i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, i32* }

@MT7650E_FIRMWARE = common dso_local global i8* null, align 8
@MT7610E_FIRMWARE = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Firmware Version: %d.%d.%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\0A\00", align 1
@MT_MCU_SEMAPHORE_00 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Could not get hardware semaphore for loading fw\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_MCU_PCIE_REMAP_BASE4 = common dso_local global i32 0, align 4
@MT_MCU_IVB_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"loading FW - ILM %u\0A\00", align 1
@MT_MCU_ILM_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"loading FW - IVB %u\0A\00", align 1
@MT_MCU_IVB_ADDR = common dso_local global i32 0, align 4
@MT_MCU_DLM_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"loading FW - DLM %u\0A\00", align 1
@MT_MCU_INT_LEVEL = common dso_local global i32 0, align 4
@MT_MCU_RESET_CTL = common dso_local global i32 0, align 4
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Firmware failed to start\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Firmware running!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0e_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0e_load_firmware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76x02_fw_header*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %15, i32 0, i32 0
  %17 = call i32 @mt76_chip(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 30224
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i8*, i8** @MT7650E_FIRMWARE, align 8
  store i8* %23, i8** %11, align 8
  br label %26

24:                                               ; preds = %1
  %25 = load i8*, i8** @MT7610E_FIRMWARE, align 8
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @request_firmware(%struct.firmware** %10, i8* %27, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %2, align 4
  br label %258

37:                                               ; preds = %26
  %38 = load %struct.firmware*, %struct.firmware** %10, align 8
  %39 = icmp ne %struct.firmware* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.firmware*, %struct.firmware** %10, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.firmware*, %struct.firmware** %10, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 20
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %40, %37
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %247

54:                                               ; preds = %45
  %55 = load %struct.firmware*, %struct.firmware** %10, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to %struct.mt76x02_fw_header*
  store %struct.mt76x02_fw_header* %58, %struct.mt76x02_fw_header** %9, align 8
  store i32 20, i32* %13, align 4
  %59 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %60 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %66 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.firmware*, %struct.firmware** %10, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %54
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %247

79:                                               ; preds = %54
  %80 = load %struct.firmware*, %struct.firmware** %10, align 8
  %81 = getelementptr inbounds %struct.firmware, %struct.firmware* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 20
  store i32* %83, i32** %12, align 8
  %84 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %85 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 12
  %94 = and i32 %93, 15
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 15
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, 15
  %100 = call i32 @dev_info(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %99)
  %101 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %102 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = ashr i32 %109, 12
  %111 = and i32 %110, 15
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 8
  %114 = and i32 %113, 15
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, 15
  %117 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %118 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %122 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i32 %116, i32 %120, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %79
  %128 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %129 = load i32, i32* @MT_MCU_SEMAPHORE_00, align 4
  %130 = call i32 @mt76_poll(%struct.mt76x02_dev* %128, i32 %129, i32 1, i32 1, i32 600)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %127
  %133 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %134 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @ETIMEDOUT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %247

140:                                              ; preds = %127, %79
  %141 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %142 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %143 = call i32 @mt76_wr(%struct.mt76x02_dev* %141, i32 %142, i32 0)
  %144 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %145 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %150, %140
  %156 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (i32, i8*, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %163 = load i32, i32* @MT_MCU_ILM_ADDR, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %162, i32 %165, i32* %169, i32 %170)
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %155
  %175 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %176 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %180 = call i32 (i32, i8*, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  %181 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %182 = load i32, i32* @MT_MCU_IVB_ADDR, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %185 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %181, i32 %182, i32* %183, i32 %184)
  br label %186

186:                                              ; preds = %174, %155
  %187 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %188 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %189 = load i32, i32* @MT_MCU_DLM_OFFSET, align 4
  %190 = call i32 @mt76_wr(%struct.mt76x02_dev* %187, i32 %188, i32 %189)
  %191 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %192 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le32_to_cpu(i32 %193)
  store i32 %194, i32* %7, align 4
  %195 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 (i32, i8*, ...) @dev_dbg(i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  %201 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %202 = load i32, i32* @MT_MCU_ILM_ADDR, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %205 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @le32_to_cpu(i32 %206)
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %203, i64 %208
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %201, i32 %202, i32* %209, i32 %210)
  %212 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %213 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %214 = call i32 @mt76_wr(%struct.mt76x02_dev* %212, i32 %213, i32 0)
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %186
  %218 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %219 = load i32, i32* @MT_MCU_INT_LEVEL, align 4
  %220 = call i32 @mt76_wr(%struct.mt76x02_dev* %218, i32 %219, i32 3)
  br label %225

221:                                              ; preds = %186
  %222 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %223 = load i32, i32* @MT_MCU_RESET_CTL, align 4
  %224 = call i32 @mt76_wr(%struct.mt76x02_dev* %222, i32 %223, i32 768)
  br label %225

225:                                              ; preds = %221, %217
  %226 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %227 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %228 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %226, i32 %227, i32 1, i32 1, i32 1000)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %225
  %231 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %232 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @dev_err(i32 %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %236 = load i32, i32* @ETIMEDOUT, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %14, align 4
  br label %247

238:                                              ; preds = %225
  %239 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %240 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %9, align 8
  %241 = call i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev* %239, %struct.mt76x02_fw_header* %240)
  %242 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %243 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, ...) @dev_dbg(i32 %245, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %247

247:                                              ; preds = %238, %230, %132, %76, %51
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %252 = load i32, i32* @MT_MCU_SEMAPHORE_00, align 4
  %253 = call i32 @mt76_wr(%struct.mt76x02_dev* %251, i32 %252, i32 1)
  br label %254

254:                                              ; preds = %250, %247
  %255 = load %struct.firmware*, %struct.firmware** %10, align 8
  %256 = call i32 @release_firmware(%struct.firmware* %255)
  %257 = load i32, i32* %14, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %254, %35
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @mt76_chip(%struct.TYPE_2__*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, i32*, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76x02_set_ethtool_fwver(%struct.mt76x02_dev*, %struct.mt76x02_fw_header*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
