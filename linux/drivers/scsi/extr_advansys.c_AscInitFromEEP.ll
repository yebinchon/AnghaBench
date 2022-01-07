; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitFromEEP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitFromEEP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32*, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32, i32*, i64*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64 }

@ASCV_HALTCODE_W = common dso_local global i32 0, align 4
@ASC_INIT_RESET_SCSI_DONE = common dso_local global i32 0, align 4
@ASC_IERR_START_STOP_CHIP = common dso_local global i32 0, align 4
@ASC_MCODE_START_ADDR = common dso_local global i64 0, align 8
@ASC_IERR_SET_PC_ADDR = common dso_local global i32 0, align 4
@ASC_CFG_MSW_CLR_MASK = common dso_local global i32 0, align 4
@ASC_WARN_CFG_MSW_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"chksum 0x%x\0A\00", align 1
@CSW_AUTO_CONFIG = common dso_local global i32 0, align 4
@ASC_WARN_AUTO_CONFIG = common dso_local global i32 0, align 4
@ASC_WARN_EEPROM_RECOVER = common dso_local global i32 0, align 4
@ASC_CFG0_HOST_INT_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"eep_config->chksum 0x%x\0A\00", align 1
@ASC_CHIP_VER_PCI_ULTRA_3050 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"chksum error ignored; EEPROM-less board\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"AscInitFromEEP: EEPROM checksum error; Will try to re-write EEPROM.\0A\00", align 1
@ASC_WARN_EEPROM_CHKSUM = common dso_local global i32 0, align 4
@ASC_IS_PCI_ULTRA = common dso_local global i32 0, align 4
@ASC_MAX_PCI_ULTRA_INRAM_TOTAL_QNG = common dso_local global i32 0, align 4
@ASC_MAX_PCI_ULTRA_INRAM_TAG_QNG = common dso_local global i32 0, align 4
@ASC_MAX_PCI_INRAM_TOTAL_QNG = common dso_local global i32 0, align 4
@ASC_MAX_INRAM_TAG_QNG = common dso_local global i32 0, align 4
@ASC_MIN_TOTAL_QNG = common dso_local global i32 0, align 4
@ASC_MAX_TOTAL_QNG = common dso_local global i32 0, align 4
@ASC_MIN_TAG_Q_PER_DVC = common dso_local global i32 0, align 4
@ASC_WARN_CMD_QNG_CONFLICT = common dso_local global i32 0, align 4
@ASC_MAX_TID = common dso_local global i32 0, align 4
@ASC_CNTL_SDTR_ENABLE_ULTRA = common dso_local global i32 0, align 4
@ASC_SDTR_ULTRA_PCI_10MB_INDEX = common dso_local global i32 0, align 4
@ASC_DEF_SDTR_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"AscInitFromEEP: Failed to re-write EEPROM with %d errors.\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"AscInitFromEEP: Successfully re-wrote EEPROM.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @AscInitFromEEP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscInitFromEEP(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %18 = call i32 @AscWriteLramWord(i32 %16, i32 %17, i32 254)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @AscStopQueueExe(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @AscStopChip(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @AscGetChipScsiCtrl(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @ASC_INIT_RESET_SCSI_DONE, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = call i32 @AscResetChipAndScsiBus(%struct.TYPE_13__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @mdelay(i32 %39)
  br label %41

41:                                               ; preds = %28, %24
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @AscIsChipHalted(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ASC_IERR_START_STOP_CHIP, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %546

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %55 = call i32 @AscSetPCAddr(i32 %53, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @AscGetPCAddr(i32 %56)
  %58 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* @ASC_IERR_SET_PC_ADDR, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %546

67:                                               ; preds = %52
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @AscGetChipCfgMsw(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i8* @AscGetChipCfgLsw(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ASC_CFG_MSW_CLR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load i32, i32* @ASC_CFG_MSW_CLR_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @ASC_WARN_CFG_MSW_RECOVER, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @AscSetChipCfgMsw(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %78, %67
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @AscGetEEPConfig(i32 %90, %struct.TYPE_14__* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 43605, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @AscGetChipStatus(i32 %102)
  %104 = load i32, i32* @CSW_AUTO_CONFIG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %149

107:                                              ; preds = %101
  %108 = load i32, i32* @ASC_WARN_AUTO_CONFIG, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %148

117:                                              ; preds = %107
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* @ASC_WARN_EEPROM_RECOVER, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i8* @AscGetChipCfgLsw(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %123, %117
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i32, i32* @ASC_WARN_EEPROM_RECOVER, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i8* @AscGetChipCfgMsw(i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %132
  br label %148

148:                                              ; preds = %147, %107
  br label %149

149:                                              ; preds = %148, %101
  %150 = load i32, i32* @ASC_CFG_MSW_CLR_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @ASC_CFG0_HOST_INT_ON, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %228

170:                                              ; preds = %149
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @AscGetChipVersion(i32 %171, i32 %174)
  %176 = load i64, i64* @ASC_CHIP_VER_PCI_ULTRA_3050, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %222

178:                                              ; preds = %170
  %179 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  store i32 255, i32* %181, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 4
  store i32 255, i32* %183, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 5
  store i32 255, i32* %185, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  store i32 0, i32* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 7
  store i32 240, i32* %189, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 8
  store i32 32, i32* %191, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 9
  store i32 49151, i32* %193, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = call i32 @ASC_EEP_SET_CHIP_ID(%struct.TYPE_14__* %194, i32 7)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 12
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 10
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 0, i32* %201, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 10
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 0, i32* %205, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 10
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  store i32 0, i32* %209, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 10
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 10
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  store i32 0, i32* %217, align 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 10
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 5
  store i32 187, i32* %221, align 4
  br label %227

222:                                              ; preds = %170
  %223 = call i32 @ASC_PRINT(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  %224 = load i32, i32* @ASC_WARN_EEPROM_CHKSUM, align 4
  %225 = load i32, i32* %8, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %222, %178
  br label %228

228:                                              ; preds = %227, %149
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  store i32 %238, i32* %242, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  store i32 %245, i32* %249, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %251 = call i32 @ASC_EEP_GET_DMA_SPD(%struct.TYPE_14__* %250)
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 6
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 8
  store i32 %251, i32* %255, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 12
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 8
  store i64 %268, i64* %270, align 8
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 10
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %275, i32* %281, align 4
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 10
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 6
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 4
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32 %286, i32* %292, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 10
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  store i32 %297, i32* %303, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 10
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 3
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 4
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  store i32 %308, i32* %314, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 10
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 4
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 6
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 4
  store i32 %319, i32* %325, align 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 10
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 5
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 5
  store i32 %330, i32* %336, align 4
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %338 = call i32 @AscTestExternalLram(%struct.TYPE_13__* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %372, label %340

340:                                              ; preds = %228
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @ASC_IS_PCI_ULTRA, align 4
  %345 = and i32 %343, %344
  %346 = load i32, i32* @ASC_IS_PCI_ULTRA, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %355

348:                                              ; preds = %340
  %349 = load i32, i32* @ASC_MAX_PCI_ULTRA_INRAM_TOTAL_QNG, align 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 7
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* @ASC_MAX_PCI_ULTRA_INRAM_TAG_QNG, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 8
  br label %371

355:                                              ; preds = %340
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, 2048
  store i32 %359, i32* %357, align 4
  %360 = load i32, i32* %9, align 4
  %361 = or i32 %360, 2048
  store i32 %361, i32* %9, align 4
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @AscSetChipCfgMsw(i32 %362, i32 %363)
  %365 = load i32, i32* @ASC_MAX_PCI_INRAM_TOTAL_QNG, align 4
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 7
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* @ASC_MAX_INRAM_TAG_QNG, align 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 8
  store i32 %368, i32* %370, align 8
  br label %371

371:                                              ; preds = %355, %348
  br label %373

372:                                              ; preds = %228
  br label %373

373:                                              ; preds = %372, %371
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @ASC_MIN_TOTAL_QNG, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %373
  %380 = load i32, i32* @ASC_MIN_TOTAL_QNG, align 4
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 7
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %379, %373
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @ASC_MAX_TOTAL_QNG, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %383
  %390 = load i32, i32* @ASC_MAX_TOTAL_QNG, align 4
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 7
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %389, %383
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = icmp sgt i32 %396, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %393
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 8
  store i32 %404, i32* %406, align 8
  br label %407

407:                                              ; preds = %401, %393
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @ASC_MIN_TAG_Q_PER_DVC, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %407
  %414 = load i32, i32* @ASC_MIN_TAG_Q_PER_DVC, align 4
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 8
  store i32 %414, i32* %416, align 8
  br label %417

417:                                              ; preds = %413, %407
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 4
  store i32 %420, i32* %422, align 8
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = and i32 %425, %428
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 6
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %429, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %417
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 4
  store i32 %437, i32* %439, align 8
  %440 = load i32, i32* @ASC_WARN_CMD_QNG_CONFLICT, align 4
  %441 = load i32, i32* %8, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %8, align 4
  br label %443

443:                                              ; preds = %434, %417
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %446 = call i32 @ASC_EEP_GET_CHIP_ID(%struct.TYPE_14__* %445)
  %447 = load i32, i32* @ASC_MAX_TID, align 4
  %448 = and i32 %446, %447
  %449 = call i32 @ASC_EEP_SET_CHIP_ID(%struct.TYPE_14__* %444, i32 %448)
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %451 = call i32 @ASC_EEP_GET_CHIP_ID(%struct.TYPE_14__* %450)
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 6
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 5
  store i32 %451, i32* %455, align 8
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @ASC_IS_PCI_ULTRA, align 4
  %460 = and i32 %458, %459
  %461 = load i32, i32* @ASC_IS_PCI_ULTRA, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %474

463:                                              ; preds = %443
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @ASC_CNTL_SDTR_ENABLE_ULTRA, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %463
  %471 = load i32, i32* @ASC_SDTR_ULTRA_PCI_10MB_INDEX, align 4
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 5
  store i32 %471, i32* %473, align 4
  br label %474

474:                                              ; preds = %470, %463, %443
  store i32 0, i32* %11, align 4
  br label %475

475:                                              ; preds = %519, %474
  %476 = load i32, i32* %11, align 4
  %477 = load i32, i32* @ASC_MAX_TID, align 4
  %478 = icmp sle i32 %476, %477
  br i1 %478, label %479, label %522

479:                                              ; preds = %475
  %480 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %480, i32 0, i32 11
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %11, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 7
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %11, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  store i32 %486, i32* %492, align 4
  %493 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %493, i32 0, i32 8
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 6
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 6
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %11, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  store i32 %495, i32* %503, align 4
  %504 = load i32, i32* @ASC_DEF_SDTR_OFFSET, align 4
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 5
  %507 = load i32, i32* %506, align 4
  %508 = shl i32 %507, 4
  %509 = or i32 %504, %508
  %510 = sext i32 %509 to i64
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 6
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 7
  %515 = load i64*, i64** %514, align 8
  %516 = load i32, i32* %11, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %515, i64 %517
  store i64 %510, i64* %518, align 8
  br label %519

519:                                              ; preds = %479
  %520 = load i32, i32* %11, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %11, align 4
  br label %475

522:                                              ; preds = %475
  %523 = load i32, i32* %6, align 4
  %524 = call i8* @AscGetChipCfgMsw(i32 %523)
  %525 = ptrtoint i8* %524 to i32
  %526 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %526, i32 0, i32 1
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %12, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %544

530:                                              ; preds = %522
  %531 = load i32, i32* %6, align 4
  %532 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @AscSetEEPConfig(i32 %531, %struct.TYPE_14__* %532, i32 %535)
  store i32 %536, i32* %11, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %530
  %539 = load i32, i32* %11, align 4
  %540 = call i32 @ASC_PRINT1(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %539)
  br label %543

541:                                              ; preds = %530
  %542 = call i32 @ASC_PRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %543

543:                                              ; preds = %541, %538
  br label %544

544:                                              ; preds = %543, %522
  %545 = load i32, i32* %8, align 4
  store i32 %545, i32* %2, align 4
  br label %546

546:                                              ; preds = %544, %60, %45
  %547 = load i32, i32* %2, align 4
  ret i32 %547
}

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

declare dso_local i32 @AscStopQueueExe(i32) #1

declare dso_local i64 @AscStopChip(i32) #1

declare dso_local i64 @AscGetChipScsiCtrl(i32) #1

declare dso_local i32 @AscResetChipAndScsiBus(%struct.TYPE_13__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AscIsChipHalted(i32) #1

declare dso_local i32 @AscSetPCAddr(i32, i64) #1

declare dso_local i64 @AscGetPCAddr(i32) #1

declare dso_local i8* @AscGetChipCfgMsw(i32) #1

declare dso_local i8* @AscGetChipCfgLsw(i32) #1

declare dso_local i32 @AscSetChipCfgMsw(i32, i32) #1

declare dso_local i32 @AscGetEEPConfig(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @AscGetChipStatus(i32) #1

declare dso_local i64 @AscGetChipVersion(i32, i32) #1

declare dso_local i32 @ASC_EEP_SET_CHIP_ID(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASC_PRINT(i8*) #1

declare dso_local i32 @ASC_EEP_GET_DMA_SPD(%struct.TYPE_14__*) #1

declare dso_local i32 @AscTestExternalLram(%struct.TYPE_13__*) #1

declare dso_local i32 @ASC_EEP_GET_CHIP_ID(%struct.TYPE_14__*) #1

declare dso_local i32 @AscSetEEPConfig(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASC_PRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
