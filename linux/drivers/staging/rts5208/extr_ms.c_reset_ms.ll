; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i32*, i64*, i32*, %struct.ms_info }
%struct.ms_info = type { i32, i32, i32, i32, i32, i32, i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@TYPE_MS = common dso_local global i32 0, align 4
@MS_RESET = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@WRT_PRTCT = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@MAX_DEFECTIVE_BLOCK = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@BLOCK_OK = common dso_local global i32 0, align 4
@NOT_BOOT_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No boot block found!\00", align 1
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@HEADER_ID0 = common dso_local global i32 0, align 4
@HEADER_ID1 = common dso_local global i32 0, align 4
@DISABLED_BLOCK0 = common dso_local global i32 0, align 4
@DISABLED_BLOCK3 = common dso_local global i32 0, align 4
@BLOCK_SIZE_0 = common dso_local global i32 0, align 4
@PAGE_SIZE_1 = common dso_local global i32 0, align 4
@MS_Device_Type = common dso_local global i32 0, align 4
@MS_4bit_Support = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Boot block data:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@SystemParm = common dso_local global i32 0, align 4
@MS_TM_WRITE_BYTES = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@MS_CFG = common dso_local global i32 0, align 4
@MS_NO_CHECK_INT = common dso_local global i32 0, align 4
@MS_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@PUSH_TIME_ODD = common dso_local global i32 0, align 4
@MS_4BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @reset_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_ms(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 4
  store %struct.ms_info* %17, %struct.ms_info** %4, align 8
  %18 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = call i32 @ms_prepare_reset(%struct.rtsx_chip* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

29:                                               ; preds = %1
  %30 = load i32, i32* @TYPE_MS, align 4
  %31 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %32 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = load i32, i32* @MS_RESET, align 4
  %37 = load i32, i32* @NO_WAIT_INT, align 4
  %38 = call i32 @ms_send_cmd(%struct.rtsx_chip* %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

44:                                               ; preds = %29
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

52:                                               ; preds = %44
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %54 = load i32, i32* @PPBUF_BASE2, align 4
  %55 = call i32 @rtsx_read_register(%struct.rtsx_chip* %53, i32 %54, i32* %9)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @WRT_PRTCT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* @MS_CARD, align 8
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %68 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %78

71:                                               ; preds = %60
  %72 = load i64, i64* @MS_CARD, align 8
  %73 = xor i64 %72, -1
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %71, %65
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %300, %285, %156, %78
  br label %80

80:                                               ; preds = %124, %104, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MAX_DEFECTIVE_BLOCK, align 4
  %83 = add nsw i32 %82, 2
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %80
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %87 = load i64, i64* @MS_CARD, align 8
  %88 = call i32 @detect_card_cd(%struct.rtsx_chip* %86, i64 %87)
  %89 = load i32, i32* @STATUS_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %93 = load i32, i32* @MS_NO_CARD, align 4
  %94 = call i32 @ms_set_err_code(%struct.rtsx_chip* %92, i32 %93)
  %95 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

96:                                               ; preds = %85
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %100 = call i32 @ms_read_extra_data(%struct.rtsx_chip* %97, i32 %98, i32 0, i32* %21, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @STATUS_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %80

107:                                              ; preds = %96
  %108 = getelementptr inbounds i32, i32* %21, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = load i32, i32* @BLOCK_OK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = getelementptr inbounds i32, i32* %21, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NOT_BOOT_BLOCK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %122 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %127

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %80

127:                                              ; preds = %119, %80
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @MAX_DEFECTIVE_BLOCK, align 4
  %130 = add nsw i32 %129, 2
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %134 = call i32 @rtsx_dev(%struct.rtsx_chip* %133)
  %135 = call i32 (i32, i8*, ...) @dev_dbg(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

137:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %166, %137
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %169

141:                                              ; preds = %138
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %143 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %144 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @ms_read_page(%struct.rtsx_chip* %142, i32 %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @STATUS_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %141
  %152 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %153 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %154 = call i64 @ms_check_err_code(%struct.rtsx_chip* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %158 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %162 = load i32, i32* @MS_NO_ERROR, align 4
  %163 = call i32 @ms_set_err_code(%struct.rtsx_chip* %161, i32 %162)
  br label %79

164:                                              ; preds = %151
  br label %165

165:                                              ; preds = %164, %141
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %138

169:                                              ; preds = %138
  %170 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %171 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %172 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ms_read_page(%struct.rtsx_chip* %170, i32 %173, i32 0)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @STATUS_SUCCESS, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %179, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

180:                                              ; preds = %169
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %182 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %181)
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %194, %180
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 96
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %188 = load i32, i32* @READ_REG_CMD, align 4
  %189 = load i32, i32* @PPBUF_BASE2, align 4
  %190 = add nsw i32 %189, 416
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %187, i32 %188, i32 %192, i32 0, i32 0)
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %183

197:                                              ; preds = %183
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %199 = load i64, i64* @MS_CARD, align 8
  %200 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %198, i64 %199, i32 100)
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %204, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

205:                                              ; preds = %197
  %206 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %207 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %206)
  store i32* %207, i32** %13, align 8
  %208 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %209 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %13, align 8
  %212 = call i32 @memcpy(i32 %210, i32* %211, i32 96)
  %213 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %214 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %213)
  %215 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %216 = load i32, i32* @READ_REG_CMD, align 4
  %217 = load i32, i32* @HEADER_ID0, align 4
  %218 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %215, i32 %216, i32 %217, i32 0, i32 0)
  %219 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %220 = load i32, i32* @READ_REG_CMD, align 4
  %221 = load i32, i32* @HEADER_ID1, align 4
  %222 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %219, i32 %220, i32 %221, i32 0, i32 0)
  %223 = load i32, i32* @DISABLED_BLOCK0, align 4
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %233, %205
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @DISABLED_BLOCK3, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %230 = load i32, i32* @READ_REG_CMD, align 4
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %229, i32 %230, i32 %231, i32 0, i32 0)
  br label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %224

236:                                              ; preds = %224
  %237 = load i32, i32* @BLOCK_SIZE_0, align 4
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %247, %236
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @PAGE_SIZE_1, align 4
  %241 = icmp sle i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %244 = load i32, i32* @READ_REG_CMD, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %243, i32 %244, i32 %245, i32 0, i32 0)
  br label %247

247:                                              ; preds = %242
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %238

250:                                              ; preds = %238
  %251 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %252 = load i32, i32* @READ_REG_CMD, align 4
  %253 = load i32, i32* @MS_Device_Type, align 4
  %254 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %251, i32 %252, i32 %253, i32 0, i32 0)
  %255 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %256 = load i32, i32* @READ_REG_CMD, align 4
  %257 = load i32, i32* @MS_4bit_Support, align 4
  %258 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %255, i32 %256, i32 %257, i32 0, i32 0)
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %260 = load i64, i64* @MS_CARD, align 8
  %261 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %259, i64 %260, i32 100)
  store i32 %261, i32* %5, align 4
  %262 = load i32, i32* %5, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %250
  %265 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %265, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

266:                                              ; preds = %250
  %267 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %268 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %267)
  store i32* %268, i32** %13, align 8
  %269 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %270 = call i32 @rtsx_dev(%struct.rtsx_chip* %269)
  %271 = call i32 (i32, i8*, ...) @dev_dbg(i32 %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %273 = call i32 @rtsx_dev(%struct.rtsx_chip* %272)
  %274 = load i32*, i32** %13, align 8
  %275 = call i32 (i32, i8*, ...) @dev_dbg(i32 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 16, i32* %274)
  %276 = load i32*, i32** %13, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %266
  %281 = load i32*, i32** %13, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 1
  br i1 %284, label %285, label %290

285:                                              ; preds = %280, %266
  %286 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %287 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %79

290:                                              ; preds = %280
  %291 = load i32*, i32** %13, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 12
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 2
  br i1 %294, label %300, label %295

295:                                              ; preds = %290
  %296 = load i32*, i32** %13, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 13
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %295, %290
  %301 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %302 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %79

305:                                              ; preds = %295
  %306 = load i32*, i32** %13, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 14
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %315, label %310

310:                                              ; preds = %305
  %311 = load i32*, i32** %13, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 14
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %315, label %321

315:                                              ; preds = %310, %305
  %316 = load i64, i64* @MS_CARD, align 8
  %317 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %318 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = or i64 %319, %316
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %315, %310
  %322 = load i32*, i32** %13, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 6
  %324 = load i32, i32* %323, align 4
  %325 = shl i32 %324, 8
  %326 = load i32*, i32** %13, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 7
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %325, %328
  store i32 %329, i32* %8, align 4
  %330 = load i32, i32* %8, align 4
  %331 = icmp eq i32 %330, 16
  br i1 %331, label %332, label %337

332:                                              ; preds = %321
  %333 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %334 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %333, i32 0, i32 1
  store i32 5, i32* %334, align 4
  %335 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %336 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %335, i32 0, i32 2
  store i32 31, i32* %336, align 4
  br label %346

337:                                              ; preds = %321
  %338 = load i32, i32* %8, align 4
  %339 = icmp eq i32 %338, 8
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %342 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %341, i32 0, i32 1
  store i32 4, i32* %342, align 4
  %343 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %344 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %343, i32 0, i32 2
  store i32 15, i32* %344, align 4
  br label %345

345:                                              ; preds = %340, %337
  br label %346

346:                                              ; preds = %345, %332
  %347 = load i32*, i32** %13, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 8
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 8
  %351 = load i32*, i32** %13, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 9
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %350, %353
  %355 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %356 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %355, i32 0, i32 3
  store i32 %354, i32* %356, align 4
  %357 = load i32*, i32** %13, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 10
  %359 = load i32, i32* %358, align 4
  %360 = shl i32 %359, 8
  %361 = load i32*, i32** %13, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 11
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %360, %363
  store i32 %364, i32* %14, align 4
  %365 = load i32, i32* %14, align 4
  %366 = sub nsw i32 %365, 2
  %367 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %368 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = shl i32 %366, %369
  %371 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %372 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 4
  %373 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %374 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %377 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %380 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %379, i32 0, i32 2
  %381 = load i64*, i64** %380, align 8
  %382 = load i64, i64* @MS_CARD, align 8
  %383 = getelementptr inbounds i64, i64* %381, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds i32, i32* %378, i64 %384
  store i32 %375, i32* %385, align 4
  %386 = load i32*, i32** %13, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 15
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %448

390:                                              ; preds = %346
  %391 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %392 = load i32, i32* @SystemParm, align 4
  %393 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %391, i32 0, i32 0, i32 %392, i32 1)
  store i32 %393, i32* %5, align 4
  %394 = load i32, i32* %5, align 4
  %395 = load i32, i32* @STATUS_SUCCESS, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %390
  %398 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %398, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

399:                                              ; preds = %390
  %400 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %401 = load i32, i32* @PPBUF_BASE2, align 4
  %402 = call i32 @rtsx_write_register(%struct.rtsx_chip* %400, i32 %401, i32 255, i32 136)
  store i32 %402, i32* %5, align 4
  %403 = load i32, i32* %5, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = load i32, i32* %5, align 4
  store i32 %406, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

407:                                              ; preds = %399
  %408 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %409 = load i32, i32* @PPBUF_BASE2, align 4
  %410 = add nsw i32 %409, 1
  %411 = call i32 @rtsx_write_register(%struct.rtsx_chip* %408, i32 %410, i32 255, i32 0)
  store i32 %411, i32* %5, align 4
  %412 = load i32, i32* %5, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = load i32, i32* %5, align 4
  store i32 %415, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

416:                                              ; preds = %407
  %417 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %418 = load i32, i32* @MS_TM_WRITE_BYTES, align 4
  %419 = load i32, i32* @WRITE_REG, align 4
  %420 = load i32, i32* @NO_WAIT_INT, align 4
  %421 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %417, i32 %418, i32 %419, i32 1, i32 %420)
  store i32 %421, i32* %5, align 4
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* @STATUS_SUCCESS, align 4
  %424 = icmp ne i32 %422, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %416
  %426 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %426, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

427:                                              ; preds = %416
  %428 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %429 = load i32, i32* @MS_CFG, align 4
  %430 = load i32, i32* @MS_NO_CHECK_INT, align 4
  %431 = or i32 88, %430
  %432 = load i32, i32* @MS_BUS_WIDTH_4, align 4
  %433 = load i32, i32* @PUSH_TIME_ODD, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @MS_NO_CHECK_INT, align 4
  %436 = or i32 %434, %435
  %437 = call i32 @rtsx_write_register(%struct.rtsx_chip* %428, i32 %429, i32 %431, i32 %436)
  store i32 %437, i32* %5, align 4
  %438 = load i32, i32* %5, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %427
  %441 = load i32, i32* %5, align 4
  store i32 %441, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

442:                                              ; preds = %427
  %443 = load i32, i32* @MS_4BIT, align 4
  %444 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %445 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %446, %443
  store i32 %447, i32* %445, align 4
  br label %448

448:                                              ; preds = %442, %346
  %449 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %450 = call i64 @CHK_MS4BIT(%struct.ms_info* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %448
  %453 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %454 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %453, i32 0, i32 3
  %455 = load i32*, i32** %454, align 8
  %456 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %457 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %456, i32 0, i32 2
  %458 = load i64*, i64** %457, align 8
  %459 = load i64, i64* @MS_CARD, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = getelementptr inbounds i32, i32* %455, i64 %461
  store i32 4, i32* %462, align 4
  br label %474

463:                                              ; preds = %448
  %464 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %465 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %464, i32 0, i32 3
  %466 = load i32*, i32** %465, align 8
  %467 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %468 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %467, i32 0, i32 2
  %469 = load i64*, i64** %468, align 8
  %470 = load i64, i64* @MS_CARD, align 8
  %471 = getelementptr inbounds i64, i64* %469, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = getelementptr inbounds i32, i32* %466, i64 %472
  store i32 1, i32* %473, align 4
  br label %474

474:                                              ; preds = %463, %452
  %475 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %475, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %476

476:                                              ; preds = %474, %440, %425, %414, %405, %397, %264, %203, %178, %132, %91, %58, %50, %42, %27
  %477 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %477)
  %478 = load i32, i32* %2, align 4
  ret i32 %478
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ms_prepare_reset(%struct.rtsx_chip*) #2

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i32 @ms_read_status_reg(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #2

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i64) #2

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_read_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #2

declare dso_local i32 @ms_read_page(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i64 @ms_check_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i64, i32) #2

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #2

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
