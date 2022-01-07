; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_multiple_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_multiple_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, %struct.ms_info }
%struct.ms_info = type { i32 }

@OverwriteFlag = common dso_local global i32 0, align 4
@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@BLOCK_WRITE = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@MS_TM_READ_BYTES = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@INT_REG_BREQ = common dso_local global i32 0, align 4
@MS_BREQ_ERROR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@MS_TPC = common dso_local global i32 0, align 4
@WRITE_PAGE_DATA = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@RING_BUFFER = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@MS_TRANSFER = common dso_local global i32 0, align 4
@MS_TRANSFER_START = common dso_local global i32 0, align 4
@MS_TM_NORMAL_WRITE = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@MS_TRANSFER_END = common dso_local global i32 0, align 4
@MS_TO_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@BLOCK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32*, i32*, i32*)* @ms_write_multiple_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_write_multiple_pages(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtsx_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.ms_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [16 x i32], align 16
  %26 = alloca i32*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 2
  store %struct.ms_info* %28, %struct.ms_info** %20, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %96, label %31

31:                                               ; preds = %9
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %33 = load i32, i32* @OverwriteFlag, align 4
  %34 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %35 = load i32, i32* @SystemParm, align 4
  %36 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %32, i32 %33, i32 %34, i32 %35, i32 7)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %41, i32* %10, align 4
  br label %431

42:                                               ; preds = %31
  %43 = load %struct.ms_info*, %struct.ms_info** %20, align 8
  %44 = call i64 @CHK_MS4BIT(%struct.ms_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  store i32 136, i32* %47, align 16
  br label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  store i32 128, i32* %49, align 16
  br label %50

50:                                               ; preds = %48, %46
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 1
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4
  store i32 128, i32* %57, align 16
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 5
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 6
  store i32 239, i32* %59, align 8
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 7
  store i32 255, i32* %60, align 4
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %62 = load i32, i32* @WRITE_REG, align 4
  %63 = load i32, i32* @NO_WAIT_INT, align 4
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %65 = call i32 @ms_write_bytes(%struct.rtsx_chip* %61, i32 %62, i32 7, i32 %63, i32* %64, i32 8)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* @STATUS_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %70, i32* %10, align 4
  br label %431

71:                                               ; preds = %50
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %73 = load i32, i32* @BLOCK_WRITE, align 4
  %74 = load i32, i32* @WAIT_INT, align 4
  %75 = call i32 @ms_send_cmd(%struct.rtsx_chip* %72, i32 %73, i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %80, i32* %10, align 4
  br label %431

81:                                               ; preds = %71
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %83 = load i32, i32* @MS_NO_ERROR, align 4
  %84 = call i32 @ms_set_err_code(%struct.rtsx_chip* %82, i32 %83)
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %86 = load i32, i32* @MS_TM_READ_BYTES, align 4
  %87 = load i32, i32* @GET_INT, align 4
  %88 = load i32, i32* @NO_WAIT_INT, align 4
  %89 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %85, i32 %86, i32 %87, i32 1, i32 %88)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* @STATUS_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %94, i32* %10, align 4
  br label %431

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %9
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %98 = load i32, i32* @OverwriteFlag, align 4
  %99 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %100 = load i32, i32* @SystemParm, align 4
  %101 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %102 = add nsw i32 6, %101
  %103 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %97, i32 %98, i32 %99, i32 %100, i32 %102)
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %108, i32* %10, align 4
  br label %431

109:                                              ; preds = %96
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %111 = load i32, i32* @MS_NO_ERROR, align 4
  %112 = call i32 @ms_set_err_code(%struct.rtsx_chip* %110, i32 %111)
  %113 = load %struct.ms_info*, %struct.ms_info** %20, align 8
  %114 = call i64 @CHK_MS4BIT(%struct.ms_info* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  store i32 136, i32* %117, align 16
  br label %120

118:                                              ; preds = %109
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  store i32 128, i32* %119, align 16
  br label %120

120:                                              ; preds = %118, %116
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 1
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = ashr i32 %122, 8
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 2
  store i32 %123, i32* %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 3
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4
  store i32 32, i32* %132, align 16
  br label %135

133:                                              ; preds = %120
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4
  store i32 0, i32* %134, align 16
  br label %135

135:                                              ; preds = %133, %131
  %136 = load i32, i32* %15, align 4
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 5
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 6
  store i32 248, i32* %138, align 8
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 7
  store i32 255, i32* %139, align 4
  %140 = load i32, i32* %14, align 4
  %141 = ashr i32 %140, 8
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 8
  store i32 %141, i32* %142, align 16
  %143 = load i32, i32* %14, align 4
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 9
  store i32 %143, i32* %144, align 4
  store i32 10, i32* %22, align 4
  br label %145

145:                                              ; preds = %152, %135
  %146 = load i32, i32* %22, align 4
  %147 = icmp slt i32 %146, 16
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 %150
  store i32 255, i32* %151, align 4
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %145

155:                                              ; preds = %145
  store i32 0, i32* %22, align 4
  br label %156

156:                                              ; preds = %173, %155
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %162 = load i32, i32* @WRITE_REG, align 4
  %163 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %164 = add nsw i32 6, %163
  %165 = load i32, i32* @NO_WAIT_INT, align 4
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %167 = call i32 @ms_write_bytes(%struct.rtsx_chip* %161, i32 %162, i32 %164, i32 %165, i32* %166, i32 16)
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* @STATUS_SUCCESS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %176

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %22, align 4
  br label %156

176:                                              ; preds = %171, %156
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %181, i32* %10, align 4
  br label %431

182:                                              ; preds = %176
  store i32 0, i32* %22, align 4
  br label %183

183:                                              ; preds = %197, %182
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %189 = load i32, i32* @BLOCK_WRITE, align 4
  %190 = load i32, i32* @WAIT_INT, align 4
  %191 = call i32 @ms_send_cmd(%struct.rtsx_chip* %188, i32 %189, i32 %190)
  store i32 %191, i32* %21, align 4
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* @STATUS_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %200

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %22, align 4
  br label %183

200:                                              ; preds = %195, %183
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %205, i32* %10, align 4
  br label %431

206:                                              ; preds = %200
  %207 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %208 = load i32, i32* @GET_INT, align 4
  %209 = load i32, i32* @NO_WAIT_INT, align 4
  %210 = call i32 @ms_read_bytes(%struct.rtsx_chip* %207, i32 %208, i32 1, i32 %209, i32* %24, i32 1)
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* @STATUS_SUCCESS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %215, i32* %10, align 4
  br label %431

216:                                              ; preds = %206
  %217 = load i32*, i32** %17, align 8
  store i32* %217, i32** %26, align 8
  %218 = load i32, i32* %15, align 4
  store i32 %218, i32* %23, align 4
  br label %219

219:                                              ; preds = %426, %216
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %429

223:                                              ; preds = %219
  %224 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %225 = load i32, i32* @MS_NO_ERROR, align 4
  %226 = call i32 @ms_set_err_code(%struct.rtsx_chip* %224, i32 %225)
  %227 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %228 = load i32, i32* @MS_CARD, align 4
  %229 = call i32 @detect_card_cd(%struct.rtsx_chip* %227, i32 %228)
  %230 = load i32, i32* @STATUS_SUCCESS, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %223
  %233 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %234 = load i32, i32* @MS_NO_CARD, align 4
  %235 = call i32 @ms_set_err_code(%struct.rtsx_chip* %233, i32 %234)
  %236 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %236, i32* %10, align 4
  br label %431

237:                                              ; preds = %223
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* @INT_REG_CMDNK, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %244 = load i32, i32* @MS_CMD_NK, align 4
  %245 = call i32 @ms_set_err_code(%struct.rtsx_chip* %243, i32 %244)
  %246 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %246, i32* %10, align 4
  br label %431

247:                                              ; preds = %237
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* @INT_REG_ERR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %254 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %255 = call i32 @ms_set_err_code(%struct.rtsx_chip* %253, i32 %254)
  %256 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %256, i32* %10, align 4
  br label %431

257:                                              ; preds = %247
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* @INT_REG_BREQ, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %264 = load i32, i32* @MS_BREQ_ERROR, align 4
  %265 = call i32 @ms_set_err_code(%struct.rtsx_chip* %263, i32 %264)
  %266 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %266, i32* %10, align 4
  br label %431

267:                                              ; preds = %257
  %268 = call i32 @udelay(i32 30)
  %269 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %270 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %269)
  %271 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %272 = load i32, i32* @WRITE_REG_CMD, align 4
  %273 = load i32, i32* @MS_TPC, align 4
  %274 = load i32, i32* @WRITE_PAGE_DATA, align 4
  %275 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %271, i32 %272, i32 %273, i32 255, i32 %274)
  %276 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %277 = load i32, i32* @WRITE_REG_CMD, align 4
  %278 = load i32, i32* @MS_TRANS_CFG, align 4
  %279 = load i32, i32* @WAIT_INT, align 4
  %280 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %276, i32 %277, i32 %278, i32 255, i32 %279)
  %281 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %282 = load i32, i32* @WRITE_REG_CMD, align 4
  %283 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %284 = load i32, i32* @RING_BUFFER, align 4
  %285 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %281, i32 %282, i32 %283, i32 1, i32 %284)
  %286 = load i32, i32* @DMA_TO_DEVICE, align 4
  %287 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %288 = load i32, i32* @DMA_512, align 4
  %289 = call i32 @trans_dma_enable(i32 %286, %struct.rtsx_chip* %287, i32 512, i32 %288)
  %290 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %291 = load i32, i32* @WRITE_REG_CMD, align 4
  %292 = load i32, i32* @MS_TRANSFER, align 4
  %293 = load i32, i32* @MS_TRANSFER_START, align 4
  %294 = load i32, i32* @MS_TM_NORMAL_WRITE, align 4
  %295 = or i32 %293, %294
  %296 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %290, i32 %291, i32 %292, i32 255, i32 %295)
  %297 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %298 = load i32, i32* @CHECK_REG_CMD, align 4
  %299 = load i32, i32* @MS_TRANSFER, align 4
  %300 = load i32, i32* @MS_TRANSFER_END, align 4
  %301 = load i32, i32* @MS_TRANSFER_END, align 4
  %302 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %304 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %303)
  %305 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %306 = load i32, i32* @MS_CARD, align 4
  %307 = load i32*, i32** %26, align 8
  %308 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %309 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i64 @scsi_sg_count(i32 %310)
  %312 = load i32*, i32** %18, align 8
  %313 = load i32*, i32** %19, align 8
  %314 = load i32, i32* @DMA_TO_DEVICE, align 4
  %315 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %316 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @rtsx_transfer_data_partial(%struct.rtsx_chip* %305, i32 %306, i32* %307, i32 512, i64 %311, i32* %312, i32* %313, i32 %314, i32 %317)
  store i32 %318, i32* %21, align 4
  %319 = load i32, i32* %21, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %335

321:                                              ; preds = %267
  %322 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %323 = load i32, i32* @MS_TO_ERROR, align 4
  %324 = call i32 @ms_set_err_code(%struct.rtsx_chip* %322, i32 %323)
  %325 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %326 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %325)
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* @ETIMEDOUT, align 4
  %329 = sub nsw i32 0, %328
  %330 = icmp eq i32 %327, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %321
  %332 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %332, i32* %10, align 4
  br label %431

333:                                              ; preds = %321
  %334 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %334, i32* %10, align 4
  br label %431

335:                                              ; preds = %267
  %336 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %337 = load i32, i32* @GET_INT, align 4
  %338 = load i32, i32* @NO_WAIT_INT, align 4
  %339 = call i32 @ms_read_bytes(%struct.rtsx_chip* %336, i32 %337, i32 1, i32 %338, i32* %24, i32 1)
  store i32 %339, i32* %21, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* @STATUS_SUCCESS, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %335
  %344 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %344, i32* %10, align 4
  br label %431

345:                                              ; preds = %335
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %15, align 4
  %348 = sub nsw i32 %346, %347
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %361

350:                                              ; preds = %345
  %351 = load i32, i32* %24, align 4
  %352 = load i32, i32* @INT_REG_CED, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %350
  %356 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %357 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %358 = call i32 @ms_set_err_code(%struct.rtsx_chip* %356, i32 %357)
  %359 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %359, i32* %10, align 4
  br label %431

360:                                              ; preds = %350
  br label %416

361:                                              ; preds = %345
  %362 = load i32, i32* %23, align 4
  %363 = load i32, i32* %16, align 4
  %364 = sub nsw i32 %363, 1
  %365 = icmp eq i32 %362, %364
  br i1 %365, label %366, label %393

366:                                              ; preds = %361
  %367 = load i32, i32* %24, align 4
  %368 = load i32, i32* @INT_REG_CED, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %382, label %371

371:                                              ; preds = %366
  %372 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %373 = load i32, i32* @BLOCK_END, align 4
  %374 = load i32, i32* @WAIT_INT, align 4
  %375 = call i32 @ms_send_cmd(%struct.rtsx_chip* %372, i32 %373, i32 %374)
  store i32 %375, i32* %21, align 4
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* @STATUS_SUCCESS, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %371
  %380 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %380, i32* %10, align 4
  br label %431

381:                                              ; preds = %371
  br label %382

382:                                              ; preds = %381, %366
  %383 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %384 = load i32, i32* @GET_INT, align 4
  %385 = load i32, i32* @NO_WAIT_INT, align 4
  %386 = call i32 @ms_read_bytes(%struct.rtsx_chip* %383, i32 %384, i32 1, i32 %385, i32* %24, i32 1)
  store i32 %386, i32* %21, align 4
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* @STATUS_SUCCESS, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %382
  %391 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %391, i32* %10, align 4
  br label %431

392:                                              ; preds = %382
  br label %393

393:                                              ; preds = %392, %361
  %394 = load i32, i32* %23, align 4
  %395 = load i32, i32* %16, align 4
  %396 = sub nsw i32 %395, 1
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %404, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* %23, align 4
  %400 = load %struct.ms_info*, %struct.ms_info** %20, align 8
  %401 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %399, %402
  br i1 %403, label %404, label %415

404:                                              ; preds = %398, %393
  %405 = load i32, i32* %24, align 4
  %406 = load i32, i32* @INT_REG_CED, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %414, label %409

409:                                              ; preds = %404
  %410 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %411 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %412 = call i32 @ms_set_err_code(%struct.rtsx_chip* %410, i32 %411)
  %413 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %413, i32* %10, align 4
  br label %431

414:                                              ; preds = %404
  br label %415

415:                                              ; preds = %414, %398
  br label %416

416:                                              ; preds = %415, %360
  %417 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %418 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call i64 @scsi_sg_count(i32 %419)
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %416
  %423 = load i32*, i32** %26, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 512
  store i32* %424, i32** %26, align 8
  br label %425

425:                                              ; preds = %422, %416
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %23, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %23, align 4
  br label %219

429:                                              ; preds = %219
  %430 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %430, i32* %10, align 4
  br label %431

431:                                              ; preds = %429, %409, %390, %379, %355, %343, %333, %331, %262, %252, %242, %232, %214, %204, %180, %107, %93, %79, %69, %40
  %432 = load i32, i32* %10, align 4
  ret i32 %432
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data_partial(%struct.rtsx_chip*, i32, i32*, i32, i64, i32*, i32*, i32, i32) #1

declare dso_local i64 @scsi_sg_count(i32) #1

declare dso_local i32 @rtsx_clear_ms_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
