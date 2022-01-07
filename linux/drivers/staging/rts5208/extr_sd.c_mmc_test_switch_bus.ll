; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_test_switch_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_test_switch_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@BUSTEST_W = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SWITCH_FAIL = common dso_local global i32 0, align 4
@MMC_8BIT_BUS = common dso_local global i64 0, align 8
@SD_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@SD_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@REG_SD_CFG3 = common dso_local global i32 0, align 4
@SWITCH_ERR = common dso_local global i32 0, align 4
@SD_TM_AUTO_WRITE_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SD/MMC CMD %d\0A\00", align 1
@BUSTEST_R = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@REG_SD_CMD0 = common dso_local global i64 0, align 8
@REG_SD_BYTE_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_H = common dso_local global i64 0, align 8
@REG_SD_CFG2 = common dso_local global i64 0, align 8
@SD_CALCULATE_CRC7 = common dso_local global i32 0, align 4
@SD_NO_CHECK_CRC16 = common dso_local global i32 0, align 4
@SD_NO_WAIT_BUSY_END = common dso_local global i32 0, align 4
@SD_CHECK_CRC7 = common dso_local global i32 0, align 4
@SD_RSP_LEN_6 = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i64 0, align 8
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i64 0, align 8
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@SD_CARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"BUSTEST_R [8bits]: 0x%02x 0x%02x\0A\00", align 1
@SWITCH = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@MMC_SWITCH_ERR = common dso_local global i64 0, align 8
@SWITCH_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"BUSTEST_R [4bits]: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64)* @mmc_test_switch_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_switch_bus(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca [5 x i64], align 16
  %16 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  store %struct.sd_info* %18, %struct.sd_info** %6, align 8
  %19 = bitcast [8 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 64, i1 false)
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %21 = load i32, i32* @BUSTEST_W, align 4
  %22 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %23 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %20, i32 %21, i32 0, i32 %22, i64* null, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @SWITCH_FAIL, align 4
  store i32 %28, i32* %3, align 4
  br label %257

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MMC_8BIT_BUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  store i64 85, i64* %34, align 16
  %35 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  store i64 170, i64* %35, align 8
  store i32 8, i32* %12, align 4
  store i32 8, i32* %11, align 4
  %36 = load i64, i64* @SD_BUS_WIDTH_8, align 8
  store i64 %36, i64* %9, align 8
  br label %40

37:                                               ; preds = %29
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  store i64 90, i64* %38, align 16
  store i32 4, i32* %12, align 4
  store i32 4, i32* %11, align 4
  %39 = load i64, i64* @SD_BUS_WIDTH_4, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %42 = load i32, i32* @REG_SD_CFG3, align 4
  %43 = call i32 @rtsx_write_register(%struct.rtsx_chip* %41, i32 %42, i32 2, i32 2)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SWITCH_ERR, align 4
  store i32 %48, i32* %3, align 4
  br label %257

49:                                               ; preds = %40
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %51 = load i32, i32* @SD_TM_AUTO_WRITE_3, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @sd_write_data(%struct.rtsx_chip* %50, i32 %51, i32* null, i32 0, i32 %52, i32 1, i64 %53, i64* %54, i32 %55, i32 100)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %62 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %61)
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %64 = load i32, i32* @REG_SD_CFG3, align 4
  %65 = call i32 @rtsx_write_register(%struct.rtsx_chip* %63, i32 %64, i32 2, i32 0)
  %66 = load i32, i32* @SWITCH_ERR, align 4
  store i32 %66, i32* %3, align 4
  br label %257

67:                                               ; preds = %49
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %69 = load i32, i32* @REG_SD_CFG3, align 4
  %70 = call i32 @rtsx_write_register(%struct.rtsx_chip* %68, i32 %69, i32 2, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @STATUS_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @SWITCH_ERR, align 4
  store i32 %75, i32* %3, align 4
  br label %257

76:                                               ; preds = %67
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %78 = call i32 @rtsx_dev(%struct.rtsx_chip* %77)
  %79 = load i32, i32* @BUSTEST_R, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %83 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %85 = load i32, i32* @WRITE_REG_CMD, align 4
  %86 = load i64, i64* @REG_SD_CMD0, align 8
  %87 = load i32, i32* @BUSTEST_R, align 4
  %88 = or i32 64, %87
  %89 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %84, i32 %85, i64 %86, i32 255, i32 %88)
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @MMC_8BIT_BUS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %76
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %95 = load i32, i32* @WRITE_REG_CMD, align 4
  %96 = load i64, i64* @REG_SD_BYTE_CNT_L, align 8
  %97 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %94, i32 %95, i64 %96, i32 255, i32 8)
  br label %103

98:                                               ; preds = %76
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %100 = load i32, i32* @WRITE_REG_CMD, align 4
  %101 = load i64, i64* @REG_SD_BYTE_CNT_L, align 8
  %102 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %99, i32 %100, i64 %101, i32 255, i32 4)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %105 = load i32, i32* @WRITE_REG_CMD, align 4
  %106 = load i64, i64* @REG_SD_BLOCK_CNT_L, align 8
  %107 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %104, i32 %105, i64 %106, i32 255, i32 1)
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %109 = load i32, i32* @WRITE_REG_CMD, align 4
  %110 = load i64, i64* @REG_SD_BLOCK_CNT_H, align 8
  %111 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %108, i32 %109, i64 %110, i32 255, i32 0)
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %113 = load i32, i32* @WRITE_REG_CMD, align 4
  %114 = load i64, i64* @REG_SD_CFG2, align 8
  %115 = load i32, i32* @SD_CALCULATE_CRC7, align 4
  %116 = load i32, i32* @SD_NO_CHECK_CRC16, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SD_NO_WAIT_BUSY_END, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SD_CHECK_CRC7, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @SD_RSP_LEN_6, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %112, i32 %113, i64 %114, i32 255, i32 %123)
  %125 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %126 = load i32, i32* @WRITE_REG_CMD, align 4
  %127 = load i64, i64* @CARD_DATA_SOURCE, align 8
  %128 = load i32, i32* @PINGPONG_BUFFER, align 4
  %129 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %125, i32 %126, i64 %127, i32 1, i32 %128)
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %131 = load i32, i32* @WRITE_REG_CMD, align 4
  %132 = load i64, i64* @REG_SD_TRANSFER, align 8
  %133 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %134 = load i32, i32* @SD_TRANSFER_START, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %130, i32 %131, i64 %132, i32 255, i32 %135)
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %138 = load i32, i32* @CHECK_REG_CMD, align 4
  %139 = load i64, i64* @REG_SD_TRANSFER, align 8
  %140 = load i32, i32* @SD_TRANSFER_END, align 4
  %141 = load i32, i32* @SD_TRANSFER_END, align 4
  %142 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %137, i32 %138, i64 %139, i32 %140, i32 %141)
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %144 = load i32, i32* @READ_REG_CMD, align 4
  %145 = load i64, i64* @PPBUF_BASE2, align 8
  %146 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %143, i32 %144, i64 %145, i32 0, i32 0)
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @MMC_8BIT_BUS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %103
  %151 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %152 = load i32, i32* @READ_REG_CMD, align 4
  %153 = load i64, i64* @PPBUF_BASE2, align 8
  %154 = add nsw i64 %153, 1
  %155 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %151, i32 %152, i64 %154, i32 0, i32 0)
  br label %156

156:                                              ; preds = %150, %103
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %158 = load i32, i32* @SD_CARD, align 4
  %159 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %157, i32 %158, i32 100)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %164 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %163)
  %165 = load i32, i32* @SWITCH_ERR, align 4
  store i32 %165, i32* %3, align 4
  br label %257

166:                                              ; preds = %156
  %167 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %168 = call i64* @rtsx_get_cmd_data(%struct.rtsx_chip* %167)
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  store i64* %169, i64** %10, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @MMC_8BIT_BUS, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %218

173:                                              ; preds = %166
  %174 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %175 = call i32 @rtsx_dev(%struct.rtsx_chip* %174)
  %176 = load i64*, i64** %10, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %178, i64 %181)
  %183 = load i64*, i64** %10, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 170
  br i1 %186, label %187, label %217

187:                                              ; preds = %173
  %188 = load i64*, i64** %10, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 85
  br i1 %191, label %192, label %217

192:                                              ; preds = %187
  %193 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %194 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 62326272, i32* %14, align 4
  br label %198

197:                                              ; preds = %192
  store i32 62325248, i32* %14, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %200 = load i32, i32* @SWITCH, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %203 = getelementptr inbounds [5 x i64], [5 x i64]* %13, i64 0, i64 0
  %204 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %199, i32 %200, i32 %201, i32 %202, i64* %203, i32 5)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @STATUS_SUCCESS, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %198
  %209 = getelementptr inbounds [5 x i64], [5 x i64]* %13, i64 0, i64 4
  %210 = load i64, i64* %209, align 16
  %211 = load i64, i64* @MMC_SWITCH_ERR, align 8
  %212 = and i64 %210, %211
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %208
  %215 = load i32, i32* @SWITCH_SUCCESS, align 4
  store i32 %215, i32* %3, align 4
  br label %257

216:                                              ; preds = %208, %198
  br label %217

217:                                              ; preds = %216, %187, %173
  br label %255

218:                                              ; preds = %166
  %219 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %220 = call i32 @rtsx_dev(%struct.rtsx_chip* %219)
  %221 = load i64*, i64** %10, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %223)
  %225 = load i64*, i64** %10, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 165
  br i1 %228, label %229, label %254

229:                                              ; preds = %218
  %230 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %231 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 62326016, i32* %16, align 4
  br label %235

234:                                              ; preds = %229
  store i32 62324992, i32* %16, align 4
  br label %235

235:                                              ; preds = %234, %233
  %236 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %237 = load i32, i32* @SWITCH, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %240 = getelementptr inbounds [5 x i64], [5 x i64]* %15, i64 0, i64 0
  %241 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %236, i32 %237, i32 %238, i32 %239, i64* %240, i32 5)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @STATUS_SUCCESS, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %235
  %246 = getelementptr inbounds [5 x i64], [5 x i64]* %15, i64 0, i64 4
  %247 = load i64, i64* %246, align 16
  %248 = load i64, i64* @MMC_SWITCH_ERR, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %245
  %252 = load i32, i32* @SWITCH_SUCCESS, align 4
  store i32 %252, i32* %3, align 4
  br label %257

253:                                              ; preds = %245, %235
  br label %254

254:                                              ; preds = %253, %218
  br label %255

255:                                              ; preds = %254, %217
  %256 = load i32, i32* @SWITCH_FAIL, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %255, %251, %214, %162, %74, %60, %47, %27
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #2

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #2

declare dso_local i32 @sd_write_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i64, i64*, i32, i32) #2

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #2

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #2

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i64* @rtsx_get_cmd_data(%struct.rtsx_chip*) #2

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
