; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_xlnx_vcu.c_xvcu_set_vcu_pll_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_xlnx_vcu.c_xvcu_set_vcu_pll_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvcu_pll_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.xvcu_device = type { i32, i32, i32, i32, i32 }

@VCU_PLL_CLK = common dso_local global i32 0, align 4
@VCU_PLL_CLK_DEC = common dso_local global i32 0, align 4
@VCU_CORE_CLK = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@VCU_MCU_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid mcu and core clock data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FRAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Ref clock from logicoreIP is %uHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Core clock from logicoreIP is %uHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Mcu clock from logicoreIP is %uHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to set logicoreIP refclk rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to enable pll_ref clock source\0A\00", align 1
@VCU_PLL_CTRL = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_CLKOUTDIV_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_CLKOUTDIV_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"clkoutdiv value is invalid\0A\00", align 1
@xvcu_pll_cfg = common dso_local global %struct.xvcu_pll_cfg* null, align 8
@FVCO_MIN = common dso_local global i32 0, align 4
@FVCO_MAX = common dso_local global i32 0, align 4
@VCU_PLL_DIV2 = common dso_local global i32 0, align 4
@LIMIT = common dso_local global i32 0, align 4
@DIVISOR_MIN = common dso_local global i32 0, align 4
@DIVISOR_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid clock combination.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Actual Ref clock freq is %uHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Actual Core clock freq is %uHz\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Actual Mcu clock freq is %uHz\0A\00", align 1
@VCU_PLL_CTRL_FBDIV_MASK = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_POR_IN_MASK = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_POR_IN_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_DEFAULT = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_PWR_POR_MASK = common dso_local global i32 0, align 4
@VCU_PLL_CTRL_PWR_POR_SHIFT = common dso_local global i32 0, align 4
@VCU_ENC_CORE_CTRL = common dso_local global i32 0, align 4
@VCU_PLL_DIVISOR_MASK = common dso_local global i32 0, align 4
@VCU_PLL_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@VCU_SRCSEL_MASK = common dso_local global i32 0, align 4
@VCU_SRCSEL_SHIFT = common dso_local global i32 0, align 4
@VCU_SRCSEL_PLL = common dso_local global i32 0, align 4
@VCU_DEC_CORE_CTRL = common dso_local global i32 0, align 4
@VCU_ENC_MCU_CTRL = common dso_local global i32 0, align 4
@VCU_DEC_MCU_CTRL = common dso_local global i32 0, align 4
@VCU_PLL_CFG_RES_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CFG_CP_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CFG_LFHF_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CFG_LOCK_CNT_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CFG_LOCK_DLY_SHIFT = common dso_local global i32 0, align 4
@VCU_PLL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvcu_device*)* @xvcu_set_vcu_pll_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvcu_set_vcu_pll_info(%struct.xvcu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xvcu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xvcu_pll_cfg*, align 8
  %21 = alloca %struct.xvcu_pll_cfg*, align 8
  store %struct.xvcu_device* %0, %struct.xvcu_device** %3, align 8
  store %struct.xvcu_pll_cfg* null, %struct.xvcu_pll_cfg** %20, align 8
  %22 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %23 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VCU_PLL_CLK, align 4
  %26 = call i32 @xvcu_read(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %28 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VCU_PLL_CLK_DEC, align 4
  %31 = call i32 @xvcu_read(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %33 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VCU_CORE_CLK, align 4
  %36 = call i32 @xvcu_read(i32 %34, i32 %35)
  %37 = load i32, i32* @MHZ, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %40 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VCU_MCU_CLK, align 4
  %43 = call i32 @xvcu_read(i32 %41, i32 %42)
  %44 = load i32, i32* @MHZ, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %53 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %493

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MHZ, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MHZ, align 4
  %64 = load i32, i32* @FRAC, align 4
  %65 = sdiv i32 %63, %64
  %66 = mul nsw i32 %62, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %4, align 4
  %68 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %69 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %74 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %79 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %84 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @clk_disable_unprepare(i32 %85)
  %87 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %88 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @clk_set_rate(i32 %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %58
  %95 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %96 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_warn(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %58
  %100 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %101 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_prepare_enable(i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %108 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %2, align 4
  br label %493

112:                                              ; preds = %99
  %113 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %114 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @clk_get_rate(i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %118 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VCU_PLL_CTRL, align 4
  %121 = call i32 @xvcu_read(i32 %119, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @VCU_PLL_CTRL_CLKOUTDIV_SHIFT, align 4
  %124 = ashr i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @VCU_PLL_CTRL_CLKOUTDIV_MASK, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %137

130:                                              ; preds = %112
  %131 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %132 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %493

137:                                              ; preds = %112
  %138 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** @xvcu_pll_cfg, align 8
  %139 = call i32 @ARRAY_SIZE(%struct.xvcu_pll_cfg* %138)
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %224, %137
  %142 = load i32, i32* %19, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %227

144:                                              ; preds = %141
  %145 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** @xvcu_pll_cfg, align 8
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %145, i64 %147
  store %struct.xvcu_pll_cfg* %148, %struct.xvcu_pll_cfg** %21, align 8
  %149 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %21, align 8
  %150 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @FVCO_MIN, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %223

157:                                              ; preds = %144
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @FVCO_MAX, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %223

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @VCU_PLL_DIV2, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @VCU_PLL_DIV2, align 4
  %167 = srem i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %169, %161
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %5, align 4
  %175 = srem i32 %173, %174
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @LIMIT, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sdiv i32 %180, %181
  store i32 %182, i32* %10, align 4
  br label %197

183:                                              ; preds = %172
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %16, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @LIMIT, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %5, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %196

195:                                              ; preds = %183
  br label %224

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @DIVISOR_MIN, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %197
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @DIVISOR_MAX, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %21, align 8
  store %struct.xvcu_pll_cfg* %206, %struct.xvcu_pll_cfg** %20, align 8
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %6, align 4
  %209 = sdiv i32 %207, %208
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %6, align 4
  %212 = srem i32 %210, %211
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* @LIMIT, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %205
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %218, %205
  br label %227

222:                                              ; preds = %201, %197
  br label %223

223:                                              ; preds = %222, %157, %144
  br label %224

224:                                              ; preds = %223, %195
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %19, align 4
  br label %141

227:                                              ; preds = %221, %141
  %228 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %229 = icmp ne %struct.xvcu_pll_cfg* %228, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %227
  %231 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %232 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @dev_err(i32 %233, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %493

237:                                              ; preds = %227
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %10, align 4
  %240 = sdiv i32 %238, %239
  %241 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %242 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %9, align 4
  %245 = sdiv i32 %243, %244
  store i32 %245, i32* %6, align 4
  %246 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %247 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @dev_dbg(i32 %248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %249)
  %251 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %252 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %255 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @dev_dbg(i32 %253, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  %258 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %259 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @dev_dbg(i32 %260, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @VCU_PLL_CTRL_FBDIV_MASK, align 4
  %264 = load i32, i32* @VCU_PLL_CTRL_FBDIV_SHIFT, align 4
  %265 = shl i32 %263, %264
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %13, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %13, align 4
  %269 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %270 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @VCU_PLL_CTRL_FBDIV_MASK, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @VCU_PLL_CTRL_FBDIV_SHIFT, align 4
  %275 = shl i32 %273, %274
  %276 = load i32, i32* %13, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* @VCU_PLL_CTRL_POR_IN_MASK, align 4
  %279 = load i32, i32* @VCU_PLL_CTRL_POR_IN_SHIFT, align 4
  %280 = shl i32 %278, %279
  %281 = xor i32 %280, -1
  %282 = load i32, i32* %13, align 4
  %283 = and i32 %282, %281
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* @VCU_PLL_CTRL_DEFAULT, align 4
  %285 = load i32, i32* @VCU_PLL_CTRL_POR_IN_MASK, align 4
  %286 = and i32 %284, %285
  %287 = load i32, i32* @VCU_PLL_CTRL_POR_IN_SHIFT, align 4
  %288 = shl i32 %286, %287
  %289 = load i32, i32* %13, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* @VCU_PLL_CTRL_PWR_POR_MASK, align 4
  %292 = load i32, i32* @VCU_PLL_CTRL_PWR_POR_SHIFT, align 4
  %293 = shl i32 %291, %292
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %13, align 4
  %296 = and i32 %295, %294
  store i32 %296, i32* %13, align 4
  %297 = load i32, i32* @VCU_PLL_CTRL_DEFAULT, align 4
  %298 = load i32, i32* @VCU_PLL_CTRL_PWR_POR_MASK, align 4
  %299 = and i32 %297, %298
  %300 = load i32, i32* @VCU_PLL_CTRL_PWR_POR_SHIFT, align 4
  %301 = shl i32 %299, %300
  %302 = load i32, i32* %13, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %13, align 4
  %304 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %305 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @VCU_PLL_CTRL, align 4
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @xvcu_write(i32 %306, i32 %307, i32 %308)
  %310 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %311 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @VCU_ENC_CORE_CTRL, align 4
  %314 = call i32 @xvcu_read(i32 %312, i32 %313)
  store i32 %314, i32* %17, align 4
  %315 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %316 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %317 = shl i32 %315, %316
  %318 = xor i32 %317, -1
  %319 = load i32, i32* %17, align 4
  %320 = and i32 %319, %318
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %323 = and i32 %321, %322
  %324 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %325 = shl i32 %323, %324
  %326 = load i32, i32* %17, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %17, align 4
  %328 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %329 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %330 = shl i32 %328, %329
  %331 = xor i32 %330, -1
  %332 = load i32, i32* %17, align 4
  %333 = and i32 %332, %331
  store i32 %333, i32* %17, align 4
  %334 = load i32, i32* @VCU_SRCSEL_PLL, align 4
  %335 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %336 = and i32 %334, %335
  %337 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %338 = shl i32 %336, %337
  %339 = load i32, i32* %17, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %17, align 4
  %341 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %342 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @VCU_ENC_CORE_CTRL, align 4
  %345 = load i32, i32* %17, align 4
  %346 = call i32 @xvcu_write(i32 %343, i32 %344, i32 %345)
  %347 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %348 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @VCU_DEC_CORE_CTRL, align 4
  %351 = call i32 @xvcu_read(i32 %349, i32 %350)
  store i32 %351, i32* %17, align 4
  %352 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %353 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %354 = shl i32 %352, %353
  %355 = xor i32 %354, -1
  %356 = load i32, i32* %17, align 4
  %357 = and i32 %356, %355
  store i32 %357, i32* %17, align 4
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %360 = and i32 %358, %359
  %361 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %362 = shl i32 %360, %361
  %363 = load i32, i32* %17, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %17, align 4
  %365 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %366 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %367 = shl i32 %365, %366
  %368 = xor i32 %367, -1
  %369 = load i32, i32* %17, align 4
  %370 = and i32 %369, %368
  store i32 %370, i32* %17, align 4
  %371 = load i32, i32* @VCU_SRCSEL_PLL, align 4
  %372 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %375 = shl i32 %373, %374
  %376 = load i32, i32* %17, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %17, align 4
  %378 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %379 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @VCU_DEC_CORE_CTRL, align 4
  %382 = load i32, i32* %17, align 4
  %383 = call i32 @xvcu_write(i32 %380, i32 %381, i32 %382)
  %384 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %385 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @VCU_ENC_MCU_CTRL, align 4
  %388 = call i32 @xvcu_read(i32 %386, i32 %387)
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %390 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %391 = shl i32 %389, %390
  %392 = xor i32 %391, -1
  %393 = load i32, i32* %17, align 4
  %394 = and i32 %393, %392
  store i32 %394, i32* %17, align 4
  %395 = load i32, i32* %9, align 4
  %396 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %397 = and i32 %395, %396
  %398 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %399 = shl i32 %397, %398
  %400 = load i32, i32* %17, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %17, align 4
  %402 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %403 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %404 = shl i32 %402, %403
  %405 = xor i32 %404, -1
  %406 = load i32, i32* %17, align 4
  %407 = and i32 %406, %405
  store i32 %407, i32* %17, align 4
  %408 = load i32, i32* @VCU_SRCSEL_PLL, align 4
  %409 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %410 = and i32 %408, %409
  %411 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %412 = shl i32 %410, %411
  %413 = load i32, i32* %17, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %17, align 4
  %415 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %416 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @VCU_ENC_MCU_CTRL, align 4
  %419 = load i32, i32* %17, align 4
  %420 = call i32 @xvcu_write(i32 %417, i32 %418, i32 %419)
  %421 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %422 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @VCU_DEC_MCU_CTRL, align 4
  %425 = call i32 @xvcu_read(i32 %423, i32 %424)
  store i32 %425, i32* %17, align 4
  %426 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %427 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %428 = shl i32 %426, %427
  %429 = xor i32 %428, -1
  %430 = load i32, i32* %17, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %17, align 4
  %432 = load i32, i32* %9, align 4
  %433 = load i32, i32* @VCU_PLL_DIVISOR_MASK, align 4
  %434 = and i32 %432, %433
  %435 = load i32, i32* @VCU_PLL_DIVISOR_SHIFT, align 4
  %436 = shl i32 %434, %435
  %437 = load i32, i32* %17, align 4
  %438 = or i32 %437, %436
  store i32 %438, i32* %17, align 4
  %439 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %440 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %441 = shl i32 %439, %440
  %442 = xor i32 %441, -1
  %443 = load i32, i32* %17, align 4
  %444 = and i32 %443, %442
  store i32 %444, i32* %17, align 4
  %445 = load i32, i32* @VCU_SRCSEL_PLL, align 4
  %446 = load i32, i32* @VCU_SRCSEL_MASK, align 4
  %447 = and i32 %445, %446
  %448 = load i32, i32* @VCU_SRCSEL_SHIFT, align 4
  %449 = shl i32 %447, %448
  %450 = load i32, i32* %17, align 4
  %451 = or i32 %450, %449
  store i32 %451, i32* %17, align 4
  %452 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %453 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @VCU_DEC_MCU_CTRL, align 4
  %456 = load i32, i32* %17, align 4
  %457 = call i32 @xvcu_write(i32 %454, i32 %455, i32 %456)
  %458 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %459 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @VCU_PLL_CFG_RES_SHIFT, align 4
  %462 = shl i32 %460, %461
  %463 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %464 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @VCU_PLL_CFG_CP_SHIFT, align 4
  %467 = shl i32 %465, %466
  %468 = or i32 %462, %467
  %469 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %470 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @VCU_PLL_CFG_LFHF_SHIFT, align 4
  %473 = shl i32 %471, %472
  %474 = or i32 %468, %473
  %475 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %476 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @VCU_PLL_CFG_LOCK_CNT_SHIFT, align 4
  %479 = shl i32 %477, %478
  %480 = or i32 %474, %479
  %481 = load %struct.xvcu_pll_cfg*, %struct.xvcu_pll_cfg** %20, align 8
  %482 = getelementptr inbounds %struct.xvcu_pll_cfg, %struct.xvcu_pll_cfg* %481, i32 0, i32 5
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @VCU_PLL_CFG_LOCK_DLY_SHIFT, align 4
  %485 = shl i32 %483, %484
  %486 = or i32 %480, %485
  store i32 %486, i32* %15, align 4
  %487 = load %struct.xvcu_device*, %struct.xvcu_device** %3, align 8
  %488 = getelementptr inbounds %struct.xvcu_device, %struct.xvcu_device* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* @VCU_PLL_CFG, align 4
  %491 = load i32, i32* %15, align 4
  %492 = call i32 @xvcu_write(i32 %489, i32 %490, i32 %491)
  store i32 0, i32* %2, align 4
  br label %493

493:                                              ; preds = %237, %230, %130, %106, %51
  %494 = load i32, i32* %2, align 4
  ret i32 %494
}

declare dso_local i32 @xvcu_read(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.xvcu_pll_cfg*) #1

declare dso_local i32 @xvcu_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
