; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i64, i64*, i64, i64*, i64*, i32, i64*, i32, i32, i64, i32, i32, %struct.TYPE_2__*, i32*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.vnt_rsp_card_init, %struct.vnt_cmd_card_init }
%struct.TYPE_2__ = type { i32 }
%struct.vnt_rsp_card_init = type { i32, i32 }
%struct.vnt_cmd_card_init = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"---->INIbInitAdapter. [%d][%d]\0A\00", align 1
@DEVICE_INIT_COLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not download firmware: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not branch to SRAM: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"vnt_vt3184_init fail\0A\00", align 1
@MESSAGE_TYPE_CARDINIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Issue Card init fail\0A\00", align 1
@MESSAGE_TYPE_INIT_RSP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Cardinit request in status fail!\0A\00", align 1
@MESSAGE_TYPE_READ = common dso_local global i32 0, align 4
@MAC_REG_LOCALID = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4
@RATE_24M = common dso_local global i32 0, align 4
@RATE_1M = common dso_local global i32 0, align 4
@EEP_OFS_PWR_CCK = common dso_local global i64 0, align 8
@EEP_OFS_PWR_OFDMG = common dso_local global i64 0, align 8
@EEP_OFS_CCK_PWR_TBL = common dso_local global i32 0, align 4
@EEP_OFS_OFDM_PWR_TBL = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL_5G = common dso_local global i32 0, align 4
@EEP_OFS_OFDMA_PWR_TBL = common dso_local global i32 0, align 4
@EEP_OFS_ANTENNA = common dso_local global i64 0, align 8
@EEP_ANTINV = common dso_local global i32 0, align 4
@EEP_ANTENNA_AUX = common dso_local global i32 0, align 4
@EEP_ANTENNA_MAIN = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i8* null, align 8
@ANT_A = common dso_local global i8* null, align 8
@AUTO_FB_0 = common dso_local global i32 0, align 4
@BB_TYPE_11G = common dso_local global i64 0, align 8
@RF_VT3226D0 = common dso_local global i32 0, align 4
@EEP_OFS_MAJOR_VER = common dso_local global i64 0, align 8
@EEP_OFS_MINOR_VER = common dso_local global i64 0, align 8
@EEP_OFS_CALIB_TX_IQ = common dso_local global i64 0, align 8
@EEP_OFS_CALIB_TX_DC = common dso_local global i64 0, align 8
@EEP_OFS_CALIB_RX_IQ = common dso_local global i64 0, align 8
@MESSAGE_REQUEST_BBREG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Network address = %pM\0A\00", align 1
@BB_TYPE_11A = common dso_local global i64 0, align 8
@EEP_OFS_RADIOCTL = common dso_local global i64 0, align 8
@EEP_RADIOCTL_ENABLE = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL1 = common dso_local global i32 0, align 4
@GPIO3_DATA = common dso_local global i32 0, align 4
@GPIO3_INTMD = common dso_local global i32 0, align 4
@LEDSTS_TMLEN = common dso_local global i32 0, align 4
@LEDSTS_STS = common dso_local global i32 0, align 4
@LEDSTS_SLOW = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"<----INIbInitAdapter Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @vnt_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_init_registers(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_cmd_card_init*, align 8
  %5 = alloca %struct.vnt_rsp_card_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 28
  store %struct.vnt_cmd_card_init* %13, %struct.vnt_cmd_card_init** %4, align 8
  %14 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 27
  store %struct.vnt_rsp_card_init* %15, %struct.vnt_rsp_card_init** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @DEVICE_INIT_COLD, align 4
  %21 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %22 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %21, i32 0, i32 26
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %26 = call i32 @vnt_check_firmware_version(%struct.vnt_private* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %1
  %30 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %31 = call i32 @vnt_download_firmware(%struct.vnt_private* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 14
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %649

41:                                               ; preds = %29
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = call i32 @vnt_firmware_branch_to_sram(%struct.vnt_private* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %48 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %47, i32 0, i32 14
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %649

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %56 = call i32 @vnt_vt3184_init(%struct.vnt_private* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %61 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %60, i32 0, i32 14
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %649

65:                                               ; preds = %54
  %66 = load i32, i32* @DEVICE_INIT_COLD, align 4
  %67 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %68 = getelementptr inbounds %struct.vnt_cmd_card_init, %struct.vnt_cmd_card_init* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %70 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %69, i32 0, i32 25
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %73 = getelementptr inbounds %struct.vnt_cmd_card_init, %struct.vnt_cmd_card_init* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %91, %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 6
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %79 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %78, i32 0, i32 15
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %86 = getelementptr inbounds %struct.vnt_cmd_card_init, %struct.vnt_cmd_card_init* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %96 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %95, i32 0, i32 24
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %99 = getelementptr inbounds %struct.vnt_cmd_card_init, %struct.vnt_cmd_card_init* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %101 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %100, i32 0, i32 23
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %104 = getelementptr inbounds %struct.vnt_cmd_card_init, %struct.vnt_cmd_card_init* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %106 = load i32, i32* @MESSAGE_TYPE_CARDINIT, align 4
  %107 = load %struct.vnt_cmd_card_init*, %struct.vnt_cmd_card_init** %4, align 8
  %108 = bitcast %struct.vnt_cmd_card_init* %107 to i32*
  %109 = call i32 @vnt_control_out(%struct.vnt_private* %105, i32 %106, i32 0, i32 0, i32 24, i32* %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %94
  %113 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %114 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %113, i32 0, i32 14
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %649

118:                                              ; preds = %94
  %119 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %120 = load i32, i32* @MESSAGE_TYPE_INIT_RSP, align 4
  %121 = load %struct.vnt_rsp_card_init*, %struct.vnt_rsp_card_init** %5, align 8
  %122 = bitcast %struct.vnt_rsp_card_init* %121 to i32*
  %123 = call i32 @vnt_control_in(%struct.vnt_private* %119, i32 %120, i32 0, i32 0, i32 8, i32* %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %128 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %127, i32 0, i32 14
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %649

132:                                              ; preds = %118
  %133 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %134 = load i32, i32* @MESSAGE_TYPE_READ, align 4
  %135 = load i32, i32* @MAC_REG_LOCALID, align 4
  %136 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %137 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %138 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %137, i32 0, i32 0
  %139 = call i32 @vnt_control_in(%struct.vnt_private* %133, i32 %134, i32 %135, i32 %136, i32 1, i32* %138)
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %649

143:                                              ; preds = %132
  %144 = load i32, i32* @RATE_24M, align 4
  %145 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %146 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %145, i32 0, i32 22
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @RATE_1M, align 4
  %148 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 21
  store i32 %147, i32* %149, align 8
  %150 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %151 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %150, i32 0, i32 1
  store i32 255, i32* %151, align 4
  %152 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 3
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* @EEP_OFS_PWR_CCK, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %159 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %161 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @EEP_OFS_PWR_OFDMG, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %167 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %240, %143
  %169 = load i32, i32* %7, align 4
  %170 = icmp slt i32 %169, 14
  br i1 %170, label %171, label %243

171:                                              ; preds = %168
  %172 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %173 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @EEP_OFS_CCK_PWR_TBL, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %174, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %182 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 %180, i64* %186, align 8
  %187 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %188 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %187, i32 0, i32 5
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %171
  %196 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %197 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %200 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %199, i32 0, i32 5
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %198, i64* %204, align 8
  br label %205

205:                                              ; preds = %195, %171
  %206 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %207 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %206, i32 0, i32 3
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @EEP_OFS_OFDM_PWR_TBL, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %208, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %216 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %215, i32 0, i32 6
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  store i64 %214, i64* %220, align 8
  %221 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %222 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %221, i32 0, i32 6
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %205
  %230 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %231 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %234 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %233, i32 0, i32 6
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 %232, i64* %238, align 8
  br label %239

239:                                              ; preds = %229, %205
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %168

243:                                              ; preds = %168
  store i32 11, i32* %7, align 4
  br label %244

244:                                              ; preds = %270, %243
  %245 = load i32, i32* %7, align 4
  %246 = icmp slt i32 %245, 14
  br i1 %246, label %247, label %273

247:                                              ; preds = %244
  %248 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %249 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %248, i32 0, i32 5
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 10
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %254 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %253, i32 0, i32 5
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  store i64 %252, i64* %258, align 8
  %259 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %260 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %259, i32 0, i32 6
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 10
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %265 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %264, i32 0, i32 6
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  store i64 %263, i64* %269, align 8
  br label %270

270:                                              ; preds = %247
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %244

273:                                              ; preds = %244
  %274 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %275 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %274, i32 0, i32 7
  store i32 52, i32* %275, align 8
  store i32 0, i32* %7, align 4
  br label %276

276:                                              ; preds = %316, %273
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @CB_MAX_CHANNEL_5G, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %319

280:                                              ; preds = %276
  %281 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %282 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %281, i32 0, i32 3
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @EEP_OFS_OFDMA_PWR_TBL, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %283, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %291 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %290, i32 0, i32 8
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  store i64 %289, i64* %295, align 8
  %296 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %297 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %296, i32 0, i32 8
  %298 = load i64*, i64** %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %280
  %305 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %306 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %310 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %309, i32 0, i32 8
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  store i64 %308, i64* %314, align 8
  br label %315

315:                                              ; preds = %304, %280
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %7, align 4
  br label %276

319:                                              ; preds = %276
  %320 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %321 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %320, i32 0, i32 3
  %322 = load i64*, i64** %321, align 8
  %323 = load i64, i64* @EEP_OFS_ANTENNA, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = load i32, i32* @EEP_ANTINV, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %319
  %332 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %333 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %332, i32 0, i32 9
  store i32 1, i32* %333, align 8
  br label %337

334:                                              ; preds = %319
  %335 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %336 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %335, i32 0, i32 9
  store i32 0, i32* %336, align 8
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i32, i32* @EEP_ANTENNA_AUX, align 4
  %339 = load i32, i32* @EEP_ANTENNA_MAIN, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* %6, align 4
  %342 = and i32 %341, %340
  store i32 %342, i32* %6, align 4
  %343 = load i32, i32* %6, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = load i32, i32* @EEP_ANTENNA_AUX, align 4
  %347 = load i32, i32* @EEP_ANTENNA_MAIN, align 4
  %348 = or i32 %346, %347
  store i32 %348, i32* %6, align 4
  br label %349

349:                                              ; preds = %345, %337
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* @EEP_ANTENNA_AUX, align 4
  %352 = load i32, i32* @EEP_ANTENNA_MAIN, align 4
  %353 = or i32 %351, %352
  %354 = icmp eq i32 %350, %353
  br i1 %354, label %355, label %374

355:                                              ; preds = %349
  %356 = load i8*, i8** @ANT_B, align 8
  %357 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %358 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %357, i32 0, i32 20
  store i8* %356, i8** %358, align 8
  %359 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %360 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %359, i32 0, i32 10
  store i32 1, i32* %360, align 4
  %361 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %362 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %355
  %366 = load i8*, i8** @ANT_A, align 8
  %367 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %368 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %367, i32 0, i32 19
  store i8* %366, i8** %368, align 8
  br label %373

369:                                              ; preds = %355
  %370 = load i8*, i8** @ANT_B, align 8
  %371 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %372 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %371, i32 0, i32 19
  store i8* %370, i8** %372, align 8
  br label %373

373:                                              ; preds = %369, %365
  br label %416

374:                                              ; preds = %349
  %375 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %376 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %375, i32 0, i32 10
  store i32 0, i32* %376, align 4
  %377 = load i32, i32* %6, align 4
  %378 = load i32, i32* @EEP_ANTENNA_AUX, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %398

381:                                              ; preds = %374
  %382 = load i8*, i8** @ANT_A, align 8
  %383 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %384 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %383, i32 0, i32 20
  store i8* %382, i8** %384, align 8
  %385 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %386 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %381
  %390 = load i8*, i8** @ANT_B, align 8
  %391 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %392 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %391, i32 0, i32 19
  store i8* %390, i8** %392, align 8
  br label %397

393:                                              ; preds = %381
  %394 = load i8*, i8** @ANT_A, align 8
  %395 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %396 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %395, i32 0, i32 19
  store i8* %394, i8** %396, align 8
  br label %397

397:                                              ; preds = %393, %389
  br label %415

398:                                              ; preds = %374
  %399 = load i8*, i8** @ANT_B, align 8
  %400 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %401 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %400, i32 0, i32 20
  store i8* %399, i8** %401, align 8
  %402 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %403 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %402, i32 0, i32 9
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %398
  %407 = load i8*, i8** @ANT_A, align 8
  %408 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %409 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %408, i32 0, i32 19
  store i8* %407, i8** %409, align 8
  br label %414

410:                                              ; preds = %398
  %411 = load i8*, i8** @ANT_B, align 8
  %412 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %413 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %412, i32 0, i32 19
  store i8* %411, i8** %413, align 8
  br label %414

414:                                              ; preds = %410, %406
  br label %415

415:                                              ; preds = %414, %397
  br label %416

416:                                              ; preds = %415, %373
  %417 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %418 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %419 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %418, i32 0, i32 19
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @vnt_set_antenna_mode(%struct.vnt_private* %417, i8* %420)
  store i32 %421, i32* %3, align 4
  %422 = load i32, i32* %3, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %416
  br label %649

425:                                              ; preds = %416
  %426 = load i32, i32* @AUTO_FB_0, align 4
  %427 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %428 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %427, i32 0, i32 18
  store i32 %426, i32* %428, align 8
  %429 = load i64, i64* @BB_TYPE_11G, align 8
  %430 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %431 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %430, i32 0, i32 11
  store i64 %429, i64* %431, align 8
  %432 = load %struct.vnt_rsp_card_init*, %struct.vnt_rsp_card_init** %5, align 8
  %433 = getelementptr inbounds %struct.vnt_rsp_card_init, %struct.vnt_rsp_card_init* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %436 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %435, i32 0, i32 17
  store i32 %434, i32* %436, align 4
  %437 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %438 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %437, i32 0, i32 17
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @RF_VT3226D0, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %530

442:                                              ; preds = %425
  %443 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %444 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %443, i32 0, i32 3
  %445 = load i64*, i64** %444, align 8
  %446 = load i64, i64* @EEP_OFS_MAJOR_VER, align 8
  %447 = getelementptr inbounds i64, i64* %445, i64 %446
  %448 = load i64, i64* %447, align 8
  %449 = icmp eq i64 %448, 1
  br i1 %449, label %450, label %529

450:                                              ; preds = %442
  %451 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %452 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %451, i32 0, i32 3
  %453 = load i64*, i64** %452, align 8
  %454 = load i64, i64* @EEP_OFS_MINOR_VER, align 8
  %455 = getelementptr inbounds i64, i64* %453, i64 %454
  %456 = load i64, i64* %455, align 8
  %457 = icmp sge i64 %456, 4
  br i1 %457, label %458, label %529

458:                                              ; preds = %450
  %459 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %460 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %459, i32 0, i32 3
  %461 = load i64*, i64** %460, align 8
  %462 = load i64, i64* @EEP_OFS_CALIB_TX_IQ, align 8
  %463 = getelementptr inbounds i64, i64* %461, i64 %462
  %464 = load i64, i64* %463, align 8
  %465 = trunc i64 %464 to i32
  store i32 %465, i32* %9, align 4
  %466 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %467 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %466, i32 0, i32 3
  %468 = load i64*, i64** %467, align 8
  %469 = load i64, i64* @EEP_OFS_CALIB_TX_DC, align 8
  %470 = getelementptr inbounds i64, i64* %468, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %10, align 4
  %473 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %474 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %473, i32 0, i32 3
  %475 = load i64*, i64** %474, align 8
  %476 = load i64, i64* @EEP_OFS_CALIB_RX_IQ, align 8
  %477 = getelementptr inbounds i64, i64* %475, i64 %476
  %478 = load i64, i64* %477, align 8
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %11, align 4
  %480 = load i32, i32* %9, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %488, label %482

482:                                              ; preds = %458
  %483 = load i32, i32* %10, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = load i32, i32* %11, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %520

488:                                              ; preds = %485, %482, %458
  %489 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %490 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %491 = call i32 @vnt_control_out_u8(%struct.vnt_private* %489, i32 %490, i32 255, i32 3)
  store i32 %491, i32* %3, align 4
  %492 = load i32, i32* %3, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  br label %649

495:                                              ; preds = %488
  %496 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %497 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %498 = load i32, i32* %9, align 4
  %499 = call i32 @vnt_control_out_u8(%struct.vnt_private* %496, i32 %497, i32 251, i32 %498)
  store i32 %499, i32* %3, align 4
  %500 = load i32, i32* %3, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %495
  br label %649

503:                                              ; preds = %495
  %504 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %505 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %506 = load i32, i32* %10, align 4
  %507 = call i32 @vnt_control_out_u8(%struct.vnt_private* %504, i32 %505, i32 252, i32 %506)
  store i32 %507, i32* %3, align 4
  %508 = load i32, i32* %3, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %503
  br label %649

511:                                              ; preds = %503
  %512 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %513 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %514 = load i32, i32* %11, align 4
  %515 = call i32 @vnt_control_out_u8(%struct.vnt_private* %512, i32 %513, i32 253, i32 %514)
  store i32 %515, i32* %3, align 4
  %516 = load i32, i32* %3, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %511
  br label %649

519:                                              ; preds = %511
  br label %528

520:                                              ; preds = %485
  %521 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %522 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %523 = call i32 @vnt_control_out_u8(%struct.vnt_private* %521, i32 %522, i32 255, i32 0)
  store i32 %523, i32* %3, align 4
  %524 = load i32, i32* %3, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %520
  br label %649

527:                                              ; preds = %520
  br label %528

528:                                              ; preds = %527, %519
  br label %529

529:                                              ; preds = %528, %450, %442
  br label %530

530:                                              ; preds = %529, %425
  %531 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %532 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %531, i32 0, i32 16
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.vnt_rsp_card_init*, %struct.vnt_rsp_card_init** %5, align 8
  %535 = getelementptr inbounds %struct.vnt_rsp_card_init, %struct.vnt_rsp_card_init* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @memcpy(i32 %533, i32 %536, i32 6)
  %538 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %539 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %538, i32 0, i32 15
  %540 = load i32*, i32** %539, align 8
  %541 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %542 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %541, i32 0, i32 16
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @ether_addr_copy(i32* %540, i32 %543)
  %545 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %546 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %545, i32 0, i32 14
  %547 = load %struct.TYPE_2__*, %struct.TYPE_2__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %547, i32 0, i32 0
  %549 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %550 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %549, i32 0, i32 15
  %551 = load i32*, i32** %550, align 8
  %552 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %548, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32* %551)
  %553 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %554 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %553, i32 0, i32 11
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @BB_TYPE_11A, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %561

558:                                              ; preds = %530
  %559 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %560 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %559, i32 0, i32 12
  store i32 1, i32* %560, align 8
  br label %564

561:                                              ; preds = %530
  %562 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %563 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %562, i32 0, i32 12
  store i32 0, i32* %563, align 8
  br label %564

564:                                              ; preds = %561, %558
  %565 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %566 = call i32 @vnt_set_short_slot_time(%struct.vnt_private* %565)
  store i32 %566, i32* %3, align 4
  %567 = load i32, i32* %3, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %564
  br label %649

570:                                              ; preds = %564
  %571 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %572 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %571, i32 0, i32 3
  %573 = load i64*, i64** %572, align 8
  %574 = load i64, i64* @EEP_OFS_RADIOCTL, align 8
  %575 = getelementptr inbounds i64, i64* %573, i64 %574
  %576 = load i64, i64* %575, align 8
  %577 = trunc i64 %576 to i32
  %578 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %579 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %578, i32 0, i32 13
  store i32 %577, i32* %579, align 4
  %580 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %581 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %580, i32 0, i32 13
  %582 = load i32, i32* %581, align 4
  %583 = load i32, i32* @EEP_RADIOCTL_ENABLE, align 4
  %584 = and i32 %582, %583
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %615

586:                                              ; preds = %570
  %587 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %588 = load i32, i32* @MESSAGE_TYPE_READ, align 4
  %589 = load i32, i32* @MAC_REG_GPIOCTL1, align 4
  %590 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %591 = call i32 @vnt_control_in(%struct.vnt_private* %587, i32 %588, i32 %589, i32 %590, i32 1, i32* %8)
  store i32 %591, i32* %3, align 4
  %592 = load i32, i32* %3, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %586
  br label %649

595:                                              ; preds = %586
  %596 = load i32, i32* %8, align 4
  %597 = load i32, i32* @GPIO3_DATA, align 4
  %598 = and i32 %596, %597
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %605

600:                                              ; preds = %595
  %601 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %602 = load i32, i32* @MAC_REG_GPIOCTL1, align 4
  %603 = load i32, i32* @GPIO3_INTMD, align 4
  %604 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %601, i32 %602, i32 %603)
  store i32 %604, i32* %3, align 4
  br label %610

605:                                              ; preds = %595
  %606 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %607 = load i32, i32* @MAC_REG_GPIOCTL1, align 4
  %608 = load i32, i32* @GPIO3_INTMD, align 4
  %609 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %606, i32 %607, i32 %608)
  store i32 %609, i32* %3, align 4
  br label %610

610:                                              ; preds = %605, %600
  %611 = load i32, i32* %3, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %610
  br label %649

614:                                              ; preds = %610
  br label %615

615:                                              ; preds = %614, %570
  %616 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %617 = load i32, i32* @LEDSTS_TMLEN, align 4
  %618 = call i32 @vnt_mac_set_led(%struct.vnt_private* %616, i32 %617, i32 56)
  store i32 %618, i32* %3, align 4
  %619 = load i32, i32* %3, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %615
  br label %649

622:                                              ; preds = %615
  %623 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %624 = load i32, i32* @LEDSTS_STS, align 4
  %625 = load i32, i32* @LEDSTS_SLOW, align 4
  %626 = call i32 @vnt_mac_set_led(%struct.vnt_private* %623, i32 %624, i32 %625)
  store i32 %626, i32* %3, align 4
  %627 = load i32, i32* %3, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %622
  br label %649

630:                                              ; preds = %622
  %631 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %632 = load i32, i32* @MAC_REG_GPIOCTL0, align 4
  %633 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %631, i32 %632, i32 1)
  store i32 %633, i32* %3, align 4
  %634 = load i32, i32* %3, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %630
  br label %649

637:                                              ; preds = %630
  %638 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %639 = call i32 @vnt_radio_power_on(%struct.vnt_private* %638)
  store i32 %639, i32* %3, align 4
  %640 = load i32, i32* %3, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  br label %649

643:                                              ; preds = %637
  %644 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %645 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %644, i32 0, i32 14
  %646 = load %struct.TYPE_2__*, %struct.TYPE_2__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %646, i32 0, i32 0
  %648 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %647, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %649

649:                                              ; preds = %643, %642, %636, %629, %621, %613, %594, %569, %526, %518, %510, %502, %494, %424, %142, %126, %112, %59, %46, %34
  %650 = load i32, i32* %3, align 4
  ret i32 %650
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @vnt_check_firmware_version(%struct.vnt_private*) #1

declare dso_local i32 @vnt_download_firmware(%struct.vnt_private*) #1

declare dso_local i32 @vnt_firmware_branch_to_sram(%struct.vnt_private*) #1

declare dso_local i32 @vnt_vt3184_init(%struct.vnt_private*) #1

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vnt_control_in(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vnt_set_antenna_mode(%struct.vnt_private*, i8*) #1

declare dso_local i32 @vnt_control_out_u8(%struct.vnt_private*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @vnt_set_short_slot_time(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_set_led(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_radio_power_on(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
