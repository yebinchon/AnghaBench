; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_cis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@XD_RW_ADDR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@XD_PAGE_CNT = common dso_local global i32 0, align 4
@XD_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_AUTO_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_READ_PAGES = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@XD_PAGE_STATUS = common dso_local global i32 0, align 4
@XD_GPG = common dso_local global i32 0, align 4
@XD_CTL = common dso_local global i32 0, align 4
@XD_ECC1_ERROR = common dso_local global i32 0, align 4
@XD_ECC1_UNCORRECTABLE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@XD_ECC_BIT1 = common dso_local global i32 0, align 4
@XD_ECC_BYTE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ECC_BIT1 = 0x%x, ECC_BYTE1 = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Before correct: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"After correct: 0x%x\0A\00", align 1
@XD_ECC2_ERROR = common dso_local global i32 0, align 4
@XD_ECC2_UNCORRECTABLE = common dso_local global i32 0, align 4
@XD_ECC_BIT2 = common dso_local global i32 0, align 4
@XD_ECC_BYTE2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ECC_BIT2 = 0x%x, ECC_BYTE2 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32)* @xd_read_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_read_cis(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %22, i32* %5, align 4
  br label %256

23:                                               ; preds = %18
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %25 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %24)
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @XD_RW_ADDR, align 4
  %29 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %26, i32 %27, i32 %28)
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %31 = load i32, i32* @WRITE_REG_CMD, align 4
  %32 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %33 = load i32, i32* @PINGPONG_BUFFER, align 4
  %34 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %30, i32 %31, i32 %32, i32 1, i32 %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %36 = load i32, i32* @WRITE_REG_CMD, align 4
  %37 = load i32, i32* @XD_PAGE_CNT, align 4
  %38 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %35, i32 %36, i32 %37, i32 255, i32 1)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @XD_CHK_DATA_STATUS, align 4
  %42 = load i32, i32* @XD_AUTO_CHK_DATA_STATUS, align 4
  %43 = load i32, i32* @XD_AUTO_CHK_DATA_STATUS, align 4
  %44 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @XD_TRANSFER, align 4
  %48 = load i32, i32* @XD_TRANSFER_START, align 4
  %49 = load i32, i32* @XD_READ_PAGES, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %45, i32 %46, i32 %47, i32 255, i32 %50)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %53 = load i32, i32* @CHECK_REG_CMD, align 4
  %54 = load i32, i32* @XD_TRANSFER, align 4
  %55 = load i32, i32* @XD_TRANSFER_END, align 4
  %56 = load i32, i32* @XD_TRANSFER_END, align 4
  %57 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %59 = load i32, i32* @XD_CARD, align 4
  %60 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %58, i32 %59, i32 250)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %23
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %67 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %66)
  %68 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %68, i32* %5, align 4
  br label %256

69:                                               ; preds = %23
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %71 = load i32, i32* @XD_PAGE_STATUS, align 4
  %72 = call i32 @rtsx_read_register(%struct.rtsx_chip* %70, i32 %71, i32* %11)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %256

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @XD_GPG, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %83 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %82)
  %84 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %84, i32* %5, align 4
  br label %256

85:                                               ; preds = %77
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %87 = load i32, i32* @XD_CTL, align 4
  %88 = call i32 @rtsx_read_register(%struct.rtsx_chip* %86, i32 %87, i32* %11)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %256

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @XD_ECC1_ERROR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @XD_ECC1_UNCORRECTABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %170, label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @xd_read_data_from_ppb(%struct.rtsx_chip* %104, i32 0, i32* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @STATUS_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %112, i32* %5, align 4
  br label %256

113:                                              ; preds = %103
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @XD_ECC1_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %169

118:                                              ; preds = %113
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %120 = load i32, i32* @XD_ECC_BIT1, align 4
  %121 = call i32 @rtsx_read_register(%struct.rtsx_chip* %119, i32 %120, i32* %12)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %256

126:                                              ; preds = %118
  %127 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %128 = load i32, i32* @XD_ECC_BYTE1, align 4
  %129 = call i32 @rtsx_read_register(%struct.rtsx_chip* %127, i32 %128, i32* %13)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %256

134:                                              ; preds = %126
  %135 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %136 = call i32 @rtsx_dev(%struct.rtsx_chip* %135)
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %134
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %145 = call i32 @rtsx_dev(%struct.rtsx_chip* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = shl i32 1, %152
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, %153
  store i32 %159, i32* %157, align 4
  %160 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %161 = call i32 @rtsx_dev(%struct.rtsx_chip* %160)
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %143, %134
  br label %169

169:                                              ; preds = %168, %113
  br label %254

170:                                              ; preds = %98
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @XD_ECC2_ERROR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @XD_ECC2_UNCORRECTABLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %249, label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %182 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %181)
  %183 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @xd_read_data_from_ppb(%struct.rtsx_chip* %183, i32 256, i32* %184, i32 %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @STATUS_SUCCESS, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %191, i32* %5, align 4
  br label %256

192:                                              ; preds = %180
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @XD_ECC2_ERROR, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %248

197:                                              ; preds = %192
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %199 = load i32, i32* @XD_ECC_BIT2, align 4
  %200 = call i32 @rtsx_read_register(%struct.rtsx_chip* %198, i32 %199, i32* %14)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %5, align 4
  br label %256

205:                                              ; preds = %197
  %206 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %207 = load i32, i32* @XD_ECC_BYTE2, align 4
  %208 = call i32 @rtsx_read_register(%struct.rtsx_chip* %206, i32 %207, i32* %15)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %256

213:                                              ; preds = %205
  %214 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %215 = call i32 @rtsx_dev(%struct.rtsx_chip* %214)
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %216, i32 %217)
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %247

222:                                              ; preds = %213
  %223 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %224 = call i32 @rtsx_dev(%struct.rtsx_chip* %223)
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = shl i32 1, %231
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %237, %232
  store i32 %238, i32* %236, align 4
  %239 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %240 = call i32 @rtsx_dev(%struct.rtsx_chip* %239)
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %222, %213
  br label %248

248:                                              ; preds = %247, %192
  br label %253

249:                                              ; preds = %175
  %250 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %251 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %250)
  %252 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %252, i32* %5, align 4
  br label %256

253:                                              ; preds = %248
  br label %254

254:                                              ; preds = %253, %169
  %255 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %254, %249, %211, %203, %190, %132, %124, %111, %91, %81, %75, %65, %21
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @xd_read_data_from_ppb(%struct.rtsx_chip*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
