; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_config_trx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_config_trx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw8822b_rfe_info = type { i32 (%struct.rtw_dev*, i32)* }
%struct.rtw_dev = type { i64, %struct.TYPE_2__, %struct.rtw_efuse }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_efuse = type { i64 }

@rtw8822b_rfe_info = common dso_local global %struct.rtw8822b_rfe_info* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"rfe_option %d is out of boundary\0A\00", align 1
@BB_PATH_A = common dso_local global i32 0, align 4
@REG_AGCTR_A = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@BB_PATH_B = common dso_local global i32 0, align 4
@REG_AGCTR_B = common dso_local global i32 0, align 4
@REG_CDDTXP = common dso_local global i32 0, align 4
@REG_TXPSEL = common dso_local global i32 0, align 4
@REG_ADCINI = common dso_local global i32 0, align 4
@REG_TXPSEL1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@REG_RXDESC = common dso_local global i32 0, align 4
@REG_RXPSEL = common dso_local global i32 0, align 4
@REG_ANTWT = common dso_local global i32 0, align 4
@REG_HTSTFWT = common dso_local global i32 0, align 4
@REG_MRC = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_LUTWE = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@RF_LUTWA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"write RF mode table fail\0A\00", align 1
@RF_LUTWD1 = common dso_local global i32 0, align 4
@RF_LUTWD0 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822b_config_trx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_config_trx_mode(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_efuse*, align 8
  %10 = alloca %struct.rtw8822b_rfe_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 2
  store %struct.rtw_efuse* %17, %struct.rtw_efuse** %9, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %23 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** @rtw8822b_rfe_info, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.rtw8822b_rfe_info* %25)
  %27 = icmp uge i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %30 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (i32, i8*, ...) @WARN(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %311

35:                                               ; preds = %4
  %36 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** @rtw8822b_rfe_info, align 8
  %37 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %38 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %36, i64 %39
  store %struct.rtw8822b_rfe_info* %40, %struct.rtw8822b_rfe_info** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BB_PATH_A, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = load i32, i32* @REG_AGCTR_A, align 4
  %50 = load i32, i32* @MASKLWORD, align 4
  %51 = call i32 @rtw_write32_mask(%struct.rtw_dev* %48, i32 %49, i32 %50, i32 12849)
  br label %57

52:                                               ; preds = %35
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %54 = load i32, i32* @REG_AGCTR_A, align 4
  %55 = load i32, i32* @MASKLWORD, align 4
  %56 = call i32 @rtw_write32_mask(%struct.rtw_dev* %53, i32 %54, i32 %55, i32 4369)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BB_PATH_B, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %66 = load i32, i32* @REG_AGCTR_B, align 4
  %67 = load i32, i32* @MASKLWORD, align 4
  %68 = call i32 @rtw_write32_mask(%struct.rtw_dev* %65, i32 %66, i32 %67, i32 12849)
  br label %74

69:                                               ; preds = %57
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %71 = load i32, i32* @REG_AGCTR_B, align 4
  %72 = load i32, i32* @MASKLWORD, align 4
  %73 = call i32 @rtw_write32_mask(%struct.rtw_dev* %70, i32 %71, i32 %72, i32 4369)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %76 = load i32, i32* @REG_CDDTXP, align 4
  %77 = call i32 @BIT(i32 19)
  %78 = call i32 @BIT(i32 18)
  %79 = or i32 %77, %78
  %80 = call i32 @rtw_write32_mask(%struct.rtw_dev* %75, i32 %76, i32 %79, i32 3)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %82 = load i32, i32* @REG_TXPSEL, align 4
  %83 = call i32 @BIT(i32 29)
  %84 = call i32 @BIT(i32 28)
  %85 = or i32 %83, %84
  %86 = call i32 @rtw_write32_mask(%struct.rtw_dev* %81, i32 %82, i32 %85, i32 1)
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %88 = load i32, i32* @REG_TXPSEL, align 4
  %89 = call i32 @BIT(i32 30)
  %90 = call i32 @rtw_write32_mask(%struct.rtw_dev* %87, i32 %88, i32 %89, i32 1)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @BB_PATH_A, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %74
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %97 = load i32, i32* @REG_CDDTXP, align 4
  %98 = call i32 @rtw_write32_mask(%struct.rtw_dev* %96, i32 %97, i32 -1048576, i32 1)
  %99 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %100 = load i32, i32* @REG_ADCINI, align 4
  %101 = call i32 @rtw_write32_mask(%struct.rtw_dev* %99, i32 %100, i32 -268435456, i32 8)
  br label %115

102:                                              ; preds = %74
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @BB_PATH_B, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %109 = load i32, i32* @REG_CDDTXP, align 4
  %110 = call i32 @rtw_write32_mask(%struct.rtw_dev* %108, i32 %109, i32 -1048576, i32 2)
  %111 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %112 = load i32, i32* @REG_ADCINI, align 4
  %113 = call i32 @rtw_write32_mask(%struct.rtw_dev* %111, i32 %112, i32 -268435456, i32 4)
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @BB_PATH_A, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @BB_PATH_B, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119, %115
  %124 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %125 = load i32, i32* @REG_TXPSEL1, align 4
  %126 = call i32 @rtw_write32_mask(%struct.rtw_dev* %124, i32 %125, i32 65520, i32 1)
  br label %131

127:                                              ; preds = %119
  %128 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %129 = load i32, i32* @REG_TXPSEL1, align 4
  %130 = call i32 @rtw_write32_mask(%struct.rtw_dev* %128, i32 %129, i32 65520, i32 67)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %6, align 4
  %133 = shl i32 %132, 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %12, align 4
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %137 = load i32, i32* @REG_TXPSEL, align 4
  %138 = load i32, i32* @MASKBYTE0, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @rtw_write32_mask(%struct.rtw_dev* %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @BB_PATH_A, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %131
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @BB_PATH_B, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %153 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151, %148
  %157 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %158 = load i32, i32* @REG_CDDTXP, align 4
  %159 = call i32 @rtw_write32_mask(%struct.rtw_dev* %157, i32 %158, i32 -1048576, i32 67)
  %160 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %161 = load i32, i32* @REG_ADCINI, align 4
  %162 = call i32 @rtw_write32_mask(%struct.rtw_dev* %160, i32 %161, i32 -268435456, i32 12)
  br label %163

163:                                              ; preds = %156, %151
  br label %164

164:                                              ; preds = %163, %144, %131
  %165 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %166 = load i32, i32* @REG_RXDESC, align 4
  %167 = call i32 @BIT(i32 22)
  %168 = call i32 @rtw_write32_mask(%struct.rtw_dev* %165, i32 %166, i32 %167, i32 0)
  %169 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %170 = load i32, i32* @REG_RXDESC, align 4
  %171 = call i32 @BIT(i32 18)
  %172 = call i32 @rtw_write32_mask(%struct.rtw_dev* %169, i32 %170, i32 %171, i32 0)
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @BB_PATH_A, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %164
  %178 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %179 = load i32, i32* @REG_ADCINI, align 4
  %180 = call i32 @rtw_write32_mask(%struct.rtw_dev* %178, i32 %179, i32 251658240, i32 0)
  br label %191

181:                                              ; preds = %164
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @BB_PATH_B, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %188 = load i32, i32* @REG_ADCINI, align 4
  %189 = call i32 @rtw_write32_mask(%struct.rtw_dev* %187, i32 %188, i32 251658240, i32 5)
  br label %190

190:                                              ; preds = %186, %181
  br label %191

191:                                              ; preds = %190, %177
  %192 = load i32, i32* %7, align 4
  %193 = shl i32 %192, 4
  %194 = load i32, i32* %7, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %13, align 4
  %196 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %197 = load i32, i32* @REG_RXPSEL, align 4
  %198 = load i32, i32* @MASKBYTE0, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @rtw_write32_mask(%struct.rtw_dev* %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @BB_PATH_A, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @BB_PATH_B, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %204, %191
  %209 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %210 = load i32, i32* @REG_ANTWT, align 4
  %211 = call i32 @BIT(i32 16)
  %212 = call i32 @rtw_write32_mask(%struct.rtw_dev* %209, i32 %210, i32 %211, i32 0)
  %213 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %214 = load i32, i32* @REG_HTSTFWT, align 4
  %215 = call i32 @BIT(i32 28)
  %216 = call i32 @rtw_write32_mask(%struct.rtw_dev* %213, i32 %214, i32 %215, i32 0)
  %217 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %218 = load i32, i32* @REG_MRC, align 4
  %219 = call i32 @BIT(i32 23)
  %220 = call i32 @rtw_write32_mask(%struct.rtw_dev* %217, i32 %218, i32 %219, i32 0)
  br label %234

221:                                              ; preds = %204
  %222 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %223 = load i32, i32* @REG_ANTWT, align 4
  %224 = call i32 @BIT(i32 16)
  %225 = call i32 @rtw_write32_mask(%struct.rtw_dev* %222, i32 %223, i32 %224, i32 1)
  %226 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %227 = load i32, i32* @REG_HTSTFWT, align 4
  %228 = call i32 @BIT(i32 28)
  %229 = call i32 @rtw_write32_mask(%struct.rtw_dev* %226, i32 %227, i32 %228, i32 1)
  %230 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %231 = load i32, i32* @REG_MRC, align 4
  %232 = call i32 @BIT(i32 23)
  %233 = call i32 @rtw_write32_mask(%struct.rtw_dev* %230, i32 %231, i32 %232, i32 1)
  br label %234

234:                                              ; preds = %221, %208
  store i32 100, i32* %14, align 4
  br label %235

235:                                              ; preds = %258, %234
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %235
  %239 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %240 = load i32, i32* @RF_PATH_A, align 4
  %241 = load i32, i32* @RF_LUTWE, align 4
  %242 = load i32, i32* @RFREG_MASK, align 4
  %243 = call i32 @rtw_write_rf(%struct.rtw_dev* %239, i32 %240, i32 %241, i32 %242, i32 524288)
  %244 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %245 = load i32, i32* @RF_PATH_A, align 4
  %246 = load i32, i32* @RF_LUTWA, align 4
  %247 = load i32, i32* @RFREG_MASK, align 4
  %248 = call i32 @rtw_write_rf(%struct.rtw_dev* %244, i32 %245, i32 %246, i32 %247, i32 1)
  %249 = call i32 @udelay(i32 2)
  %250 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %251 = load i32, i32* @RF_PATH_A, align 4
  %252 = load i32, i32* @RFREG_MASK, align 4
  %253 = call i32 @rtw_read_rf(%struct.rtw_dev* %250, i32 %251, i32 51, i32 %252)
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %15, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %238
  br label %261

257:                                              ; preds = %238
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %14, align 4
  br label %235

261:                                              ; preds = %256, %235
  %262 = load i32, i32* %14, align 4
  %263 = icmp sle i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = call i64 (i32, i8*, ...) @WARN(i32 %264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %311

268:                                              ; preds = %261
  %269 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %270 = load i32, i32* @RF_PATH_A, align 4
  %271 = load i32, i32* @RF_LUTWE, align 4
  %272 = load i32, i32* @RFREG_MASK, align 4
  %273 = call i32 @rtw_write_rf(%struct.rtw_dev* %269, i32 %270, i32 %271, i32 %272, i32 524288)
  %274 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %275 = load i32, i32* @RF_PATH_A, align 4
  %276 = load i32, i32* @RF_LUTWA, align 4
  %277 = load i32, i32* @RFREG_MASK, align 4
  %278 = call i32 @rtw_write_rf(%struct.rtw_dev* %274, i32 %275, i32 %276, i32 %277, i32 1)
  %279 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %280 = load i32, i32* @RF_PATH_A, align 4
  %281 = load i32, i32* @RF_LUTWD1, align 4
  %282 = load i32, i32* @RFREG_MASK, align 4
  %283 = call i32 @rtw_write_rf(%struct.rtw_dev* %279, i32 %280, i32 %281, i32 %282, i32 52)
  %284 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %285 = load i32, i32* @RF_PATH_A, align 4
  %286 = load i32, i32* @RF_LUTWD0, align 4
  %287 = load i32, i32* @RFREG_MASK, align 4
  %288 = call i32 @rtw_write_rf(%struct.rtw_dev* %284, i32 %285, i32 %286, i32 %287, i32 264204)
  %289 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %290 = load i32, i32* @RF_PATH_A, align 4
  %291 = load i32, i32* @RF_LUTWE, align 4
  %292 = load i32, i32* @RFREG_MASK, align 4
  %293 = call i32 @rtw_write_rf(%struct.rtw_dev* %289, i32 %290, i32 %291, i32 %292, i32 0)
  %294 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %295 = load i32, i32* @RF_PATH_A, align 4
  %296 = load i32, i32* @RF_LUTWE, align 4
  %297 = load i32, i32* @RFREG_MASK, align 4
  %298 = call i32 @rtw_write_rf(%struct.rtw_dev* %294, i32 %295, i32 %296, i32 %297, i32 0)
  %299 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %300 = call i32 @rtw8822b_toggle_igi(%struct.rtw_dev* %299)
  %301 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %302 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  %303 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %10, align 8
  %304 = call i32 @rtw8822b_set_channel_cca(%struct.rtw_dev* %301, i32 1, i32 %302, %struct.rtw8822b_rfe_info* %303)
  %305 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %10, align 8
  %306 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %305, i32 0, i32 0
  %307 = load i32 (%struct.rtw_dev*, i32)*, i32 (%struct.rtw_dev*, i32)** %306, align 8
  %308 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32 %307(%struct.rtw_dev* %308, i32 %309)
  br label %311

311:                                              ; preds = %268, %267, %34
  ret void
}

declare dso_local i64 @WARN(i32, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.rtw8822b_rfe_info*) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822b_toggle_igi(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822b_set_channel_cca(%struct.rtw_dev*, i32, i32, %struct.rtw8822b_rfe_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
