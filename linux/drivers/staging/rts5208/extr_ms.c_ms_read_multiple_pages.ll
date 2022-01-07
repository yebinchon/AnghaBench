; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_multiple_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_multiple_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, %struct.ms_info }
%struct.ms_info = type { i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MS_FLASH_READ_ERROR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@OverwriteFlag = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@BLOCK_READ = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@INT_REG_BREQ = common dso_local global i32 0, align 4
@setPS_NG = common dso_local global i32 0, align 4
@MS_BREQ_ERROR = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@BLOCK_END = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@MS_TPC = common dso_local global i32 0, align 4
@READ_PAGE_DATA = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@RING_BUFFER = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@MS_TRANSFER = common dso_local global i32 0, align 4
@MS_TRANSFER_START = common dso_local global i32 0, align 4
@MS_TM_NORMAL_READ = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@MS_TRANSFER_END = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MS_TO_ERROR = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@MS_CRC16_ERR = common dso_local global i32 0, align 4
@MS_RDY_TIMEOUT = common dso_local global i32 0, align 4
@MS_CRC16_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32, i32*, i32*, i32*)* @ms_read_multiple_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_multiple_pages(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtsx_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ms_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [6 x i32], align 16
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %30 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %29, i32 0, i32 3
  store %struct.ms_info* %30, %struct.ms_info** %18, align 8
  %31 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %21, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %39 = call i32 @ms_read_extra_data(%struct.rtsx_chip* %35, i32 %36, i32 %37, i32* %34, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %8
  %44 = getelementptr inbounds i32, i32* %34, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 48
  %47 = icmp ne i32 %46, 48
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %50 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  %51 = call i32 @ms_set_err_code(%struct.rtsx_chip* %49, i32 %50)
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %8
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %56 = load i32, i32* @OverwriteFlag, align 4
  %57 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %58 = load i32, i32* @SystemParm, align 4
  %59 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %55, i32 %56, i32 %57, i32 %58, i32 6)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %64, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

65:                                               ; preds = %54
  %66 = load %struct.ms_info*, %struct.ms_info** %18, align 8
  %67 = call i64 @CHK_MS4BIT(%struct.ms_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  store i32 136, i32* %70, align 16
  br label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  store i32 128, i32* %72, align 16
  br label %73

73:                                               ; preds = %71, %69
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 1
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 8
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 4
  store i32 0, i32* %80, align 16
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 5
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %98, %73
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %89 = load i32, i32* @WRITE_REG, align 4
  %90 = load i32, i32* @NO_WAIT_INT, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %92 = call i32 @ms_write_bytes(%struct.rtsx_chip* %88, i32 %89, i32 6, i32 %90, i32* %91, i32 6)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %101

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %83

101:                                              ; preds = %96, %83
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %106, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

107:                                              ; preds = %101
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %109 = load i32, i32* @MS_NO_ERROR, align 4
  %110 = call i32 @ms_set_err_code(%struct.rtsx_chip* %108, i32 %109)
  %111 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %112 = load i32, i32* @BLOCK_READ, align 4
  %113 = load i32, i32* @WAIT_INT, align 4
  %114 = call i32 @ms_send_cmd(%struct.rtsx_chip* %111, i32 %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %119, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

120:                                              ; preds = %107
  %121 = load i32*, i32** %15, align 8
  store i32* %121, i32** %27, align 8
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %23, align 4
  br label %123

123:                                              ; preds = %368, %120
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %371

127:                                              ; preds = %123
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %129 = load i32, i32* @MS_NO_ERROR, align 4
  %130 = call i32 @ms_set_err_code(%struct.rtsx_chip* %128, i32 %129)
  %131 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %132 = load i32, i32* @MS_CARD, align 4
  %133 = call i32 @detect_card_cd(%struct.rtsx_chip* %131, i32 %132)
  %134 = load i32, i32* @STATUS_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %138 = load i32, i32* @MS_NO_CARD, align 4
  %139 = call i32 @ms_set_err_code(%struct.rtsx_chip* %137, i32 %138)
  %140 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %140, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

141:                                              ; preds = %127
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %143 = load i32, i32* @GET_INT, align 4
  %144 = load i32, i32* @NO_WAIT_INT, align 4
  %145 = call i32 @ms_read_bytes(%struct.rtsx_chip* %142, i32 %143, i32 1, i32 %144, i32* %24, i32 1)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @STATUS_SUCCESS, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %150, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

151:                                              ; preds = %141
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* @INT_REG_CMDNK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %158 = load i32, i32* @MS_CMD_NK, align 4
  %159 = call i32 @ms_set_err_code(%struct.rtsx_chip* %157, i32 %158)
  %160 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %160, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

161:                                              ; preds = %151
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* @INT_REG_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %208

166:                                              ; preds = %161
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* @INT_REG_BREQ, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %166
  %172 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %173 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %172)
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* @STATUS_SUCCESS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %171
  %178 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %179 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MS_CARD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %177
  %185 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %186 = call i32 @reset_ms(%struct.rtsx_chip* %185)
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @setPS_NG, align 4
  %189 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %190 = call i32 @ms_set_page_status(i32 %187, i32 %188, i32* %34, i32 %189)
  %191 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %195 = call i32 @ms_write_extra_data(%struct.rtsx_chip* %191, i32 %192, i32 %193, i32* %34, i32 %194)
  br label %196

196:                                              ; preds = %184, %177
  %197 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %198 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  %199 = call i32 @ms_set_err_code(%struct.rtsx_chip* %197, i32 %198)
  %200 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %200, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

201:                                              ; preds = %171
  br label %207

202:                                              ; preds = %166
  %203 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %204 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  %205 = call i32 @ms_set_err_code(%struct.rtsx_chip* %203, i32 %204)
  %206 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %206, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

207:                                              ; preds = %201
  br label %219

208:                                              ; preds = %161
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* @INT_REG_BREQ, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %215 = load i32, i32* @MS_BREQ_ERROR, align 4
  %216 = call i32 @ms_set_err_code(%struct.rtsx_chip* %214, i32 %215)
  %217 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %217, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %207
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sub nsw i32 %221, 1
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %262

224:                                              ; preds = %219
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* @INT_REG_CED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %224
  %230 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %231 = load i32, i32* @BLOCK_END, align 4
  %232 = load i32, i32* @WAIT_INT, align 4
  %233 = call i32 @ms_send_cmd(%struct.rtsx_chip* %230, i32 %231, i32 %232)
  store i32 %233, i32* %19, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* @STATUS_SUCCESS, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %238, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

239:                                              ; preds = %229
  br label %240

240:                                              ; preds = %239, %224
  %241 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %242 = load i32, i32* @GET_INT, align 4
  %243 = load i32, i32* @NO_WAIT_INT, align 4
  %244 = call i32 @ms_read_bytes(%struct.rtsx_chip* %241, i32 %242, i32 1, i32 %243, i32* %24, i32 1)
  store i32 %244, i32* %19, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* @STATUS_SUCCESS, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %240
  %249 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %249, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

250:                                              ; preds = %240
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* @INT_REG_CED, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %257 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  %258 = call i32 @ms_set_err_code(%struct.rtsx_chip* %256, i32 %257)
  %259 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %259, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

260:                                              ; preds = %250
  %261 = load i32, i32* @NO_WAIT_INT, align 4
  store i32 %261, i32* %25, align 4
  br label %264

262:                                              ; preds = %219
  %263 = load i32, i32* @WAIT_INT, align 4
  store i32 %263, i32* %25, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %266 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %265)
  %267 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %268 = load i32, i32* @WRITE_REG_CMD, align 4
  %269 = load i32, i32* @MS_TPC, align 4
  %270 = load i32, i32* @READ_PAGE_DATA, align 4
  %271 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %267, i32 %268, i32 %269, i32 255, i32 %270)
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %273 = load i32, i32* @WRITE_REG_CMD, align 4
  %274 = load i32, i32* @MS_TRANS_CFG, align 4
  %275 = load i32, i32* %25, align 4
  %276 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %272, i32 %273, i32 %274, i32 255, i32 %275)
  %277 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %278 = load i32, i32* @WRITE_REG_CMD, align 4
  %279 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %280 = load i32, i32* @RING_BUFFER, align 4
  %281 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %277, i32 %278, i32 %279, i32 1, i32 %280)
  %282 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %283 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %284 = load i32, i32* @DMA_512, align 4
  %285 = call i32 @trans_dma_enable(i32 %282, %struct.rtsx_chip* %283, i32 512, i32 %284)
  %286 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %287 = load i32, i32* @WRITE_REG_CMD, align 4
  %288 = load i32, i32* @MS_TRANSFER, align 4
  %289 = load i32, i32* @MS_TRANSFER_START, align 4
  %290 = load i32, i32* @MS_TM_NORMAL_READ, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %286, i32 %287, i32 %288, i32 255, i32 %291)
  %293 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %294 = load i32, i32* @CHECK_REG_CMD, align 4
  %295 = load i32, i32* @MS_TRANSFER, align 4
  %296 = load i32, i32* @MS_TRANSFER_END, align 4
  %297 = load i32, i32* @MS_TRANSFER_END, align 4
  %298 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %300 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %299)
  %301 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %302 = load i32, i32* @MS_CARD, align 4
  %303 = load i32*, i32** %27, align 8
  %304 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %305 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i64 @scsi_sg_count(i32 %306)
  %308 = load i32*, i32** %16, align 8
  %309 = load i32*, i32** %17, align 8
  %310 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %311 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %312 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @rtsx_transfer_data_partial(%struct.rtsx_chip* %301, i32 %302, i32* %303, i32 512, i64 %307, i32* %308, i32* %309, i32 %310, i32 %313)
  store i32 %314, i32* %19, align 4
  %315 = load i32, i32* %19, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %358

317:                                              ; preds = %264
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* @ETIMEDOUT, align 4
  %320 = sub nsw i32 0, %319
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %324 = load i32, i32* @MS_TO_ERROR, align 4
  %325 = call i32 @ms_set_err_code(%struct.rtsx_chip* %323, i32 %324)
  %326 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %327 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %326)
  %328 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %328, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

329:                                              ; preds = %317
  %330 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %331 = load i32, i32* @MS_TRANS_CFG, align 4
  %332 = call i32 @rtsx_read_register(%struct.rtsx_chip* %330, i32 %331, i32* %24)
  store i32 %332, i32* %19, align 4
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* @STATUS_SUCCESS, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %329
  %337 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %338 = load i32, i32* @MS_TO_ERROR, align 4
  %339 = call i32 @ms_set_err_code(%struct.rtsx_chip* %337, i32 %338)
  %340 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %341 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %340)
  %342 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %342, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

343:                                              ; preds = %329
  %344 = load i32, i32* %24, align 4
  %345 = load i32, i32* @MS_CRC16_ERR, align 4
  %346 = load i32, i32* @MS_RDY_TIMEOUT, align 4
  %347 = or i32 %345, %346
  %348 = and i32 %344, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %343
  %351 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %352 = load i32, i32* @MS_CRC16_ERROR, align 4
  %353 = call i32 @ms_set_err_code(%struct.rtsx_chip* %351, i32 %352)
  %354 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %355 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %354)
  %356 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %356, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

357:                                              ; preds = %343
  br label %358

358:                                              ; preds = %357, %264
  %359 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %360 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @scsi_sg_count(i32 %361)
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load i32*, i32** %27, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 512
  store i32* %366, i32** %27, align 8
  br label %367

367:                                              ; preds = %364, %358
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %23, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %23, align 4
  br label %123

371:                                              ; preds = %123
  %372 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %372, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %373

373:                                              ; preds = %371, %350, %336, %322, %255, %248, %237, %213, %202, %196, %156, %149, %136, %118, %105, %63, %48
  %374 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %374)
  %375 = load i32, i32* %9, align 4
  ret i32 %375
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ms_read_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #2

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_read_status_reg(%struct.rtsx_chip*) #2

declare dso_local i32 @reset_ms(%struct.rtsx_chip*) #2

declare dso_local i32 @ms_set_page_status(i32, i32, i32*, i32) #2

declare dso_local i32 @ms_write_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #2

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_transfer_data_partial(%struct.rtsx_chip*, i32, i32*, i32, i64, i32*, i32*, i32, i32) #2

declare dso_local i64 @scsi_sg_count(i32) #2

declare dso_local i32 @rtsx_clear_ms_error(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
