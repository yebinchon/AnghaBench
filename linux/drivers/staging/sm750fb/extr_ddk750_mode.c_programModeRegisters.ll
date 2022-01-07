; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_programModeRegisters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_programModeRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_parameter = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pll_value = type { i64 }

@SECONDARY_PLL = common dso_local global i64 0, align 8
@CRT_PLL_CTRL = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_TOTAL_TOTAL_MASK = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_TOTAL = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_SYNC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_SYNC_WIDTH_MASK = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_SYNC_START_MASK = common dso_local global i32 0, align 4
@CRT_HORIZONTAL_SYNC = common dso_local global i32 0, align 4
@CRT_VERTICAL_TOTAL_TOTAL_SHIFT = common dso_local global i32 0, align 4
@CRT_VERTICAL_TOTAL_TOTAL_MASK = common dso_local global i32 0, align 4
@CRT_VERTICAL_TOTAL_DISPLAY_END_MASK = common dso_local global i32 0, align 4
@CRT_VERTICAL_TOTAL = common dso_local global i32 0, align 4
@CRT_VERTICAL_SYNC_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@CRT_VERTICAL_SYNC_HEIGHT_MASK = common dso_local global i32 0, align 4
@CRT_VERTICAL_SYNC_START_MASK = common dso_local global i32 0, align 4
@CRT_VERTICAL_SYNC = common dso_local global i32 0, align 4
@DISPLAY_CTRL_TIMING = common dso_local global i32 0, align 4
@DISPLAY_CTRL_PLANE = common dso_local global i32 0, align 4
@DISPLAY_CTRL_VSYNC_PHASE = common dso_local global i32 0, align 4
@DISPLAY_CTRL_HSYNC_PHASE = common dso_local global i32 0, align 4
@SM750LE = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@PRIMARY_PLL = common dso_local global i64 0, align 8
@PANEL_PLL_CTRL = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_TOTAL_TOTAL_MASK = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_TOTAL = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_SYNC = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_SYNC_WIDTH_MASK = common dso_local global i32 0, align 4
@PANEL_HORIZONTAL_SYNC_START_MASK = common dso_local global i32 0, align 4
@PANEL_VERTICAL_TOTAL = common dso_local global i32 0, align 4
@PANEL_VERTICAL_TOTAL_TOTAL_SHIFT = common dso_local global i32 0, align 4
@PANEL_VERTICAL_TOTAL_TOTAL_MASK = common dso_local global i32 0, align 4
@PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK = common dso_local global i32 0, align 4
@PANEL_VERTICAL_SYNC = common dso_local global i32 0, align 4
@PANEL_VERTICAL_SYNC_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@PANEL_VERTICAL_SYNC_HEIGHT_MASK = common dso_local global i32 0, align 4
@PANEL_VERTICAL_SYNC_START_MASK = common dso_local global i32 0, align 4
@DISPLAY_CTRL_CLOCK_PHASE = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_RESERVED_MASK = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_VSYNC = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mode_parameter*, %struct.pll_value*)* @programModeRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @programModeRegisters(%struct.mode_parameter* %0, %struct.pll_value* %1) #0 {
  %3 = alloca %struct.mode_parameter*, align 8
  %4 = alloca %struct.pll_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mode_parameter* %0, %struct.mode_parameter** %3, align 8
  store %struct.pll_value* %1, %struct.pll_value** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.pll_value*, %struct.pll_value** %4, align 8
  %11 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SECONDARY_PLL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %140

15:                                               ; preds = %2
  %16 = load i32, i32* @CRT_PLL_CTRL, align 4
  %17 = load %struct.pll_value*, %struct.pll_value** %4, align 8
  %18 = call i32 @sm750_format_pll_reg(%struct.pll_value* %17)
  %19 = call i32 @poke32(i32 %16, i32 %18)
  %20 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %21 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @CRT_HORIZONTAL_TOTAL_TOTAL_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %29 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @CRT_HORIZONTAL_TOTAL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @poke32(i32 %36, i32 %37)
  %39 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %40 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CRT_HORIZONTAL_SYNC_WIDTH_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @CRT_HORIZONTAL_SYNC_WIDTH_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %47 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @CRT_HORIZONTAL_SYNC_START_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @CRT_HORIZONTAL_SYNC, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @poke32(i32 %54, i32 %55)
  %57 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %58 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @CRT_VERTICAL_TOTAL_TOTAL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @CRT_VERTICAL_TOTAL_TOTAL_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %66 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @CRT_VERTICAL_TOTAL_DISPLAY_END_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @CRT_VERTICAL_TOTAL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @poke32(i32 %73, i32 %74)
  %76 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %77 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CRT_VERTICAL_SYNC_HEIGHT_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* @CRT_VERTICAL_SYNC_HEIGHT_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %84 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* @CRT_VERTICAL_SYNC_START_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @CRT_VERTICAL_SYNC, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @poke32(i32 %91, i32 %92)
  %94 = load i32, i32* @DISPLAY_CTRL_TIMING, align 4
  %95 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %98 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %15
  %102 = load i32, i32* @DISPLAY_CTRL_VSYNC_PHASE, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %15
  %106 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %107 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @DISPLAY_CTRL_HSYNC_PHASE, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = call i64 (...) @sm750_get_chip_type()
  %116 = load i64, i64* @SM750LE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @displayControlAdjust_SM750LE(%struct.mode_parameter* %119, i32 %120)
  br label %139

122:                                              ; preds = %114
  %123 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %124 = call i32 @peek32(i32 %123)
  %125 = load i32, i32* @DISPLAY_CTRL_VSYNC_PHASE, align 4
  %126 = load i32, i32* @DISPLAY_CTRL_HSYNC_PHASE, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @DISPLAY_CTRL_TIMING, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = and i32 %124, %132
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @poke32(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %122, %118
  br label %298

140:                                              ; preds = %2
  %141 = load %struct.pll_value*, %struct.pll_value** %4, align 8
  %142 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PRIMARY_PLL, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %296

146:                                              ; preds = %140
  %147 = load i32, i32* @PANEL_PLL_CTRL, align 4
  %148 = load %struct.pll_value*, %struct.pll_value** %4, align 8
  %149 = call i32 @sm750_format_pll_reg(%struct.pll_value* %148)
  %150 = call i32 @poke32(i32 %147, i32 %149)
  %151 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %152 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* @PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* @PANEL_HORIZONTAL_TOTAL_TOTAL_MASK, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %8, align 4
  %159 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %160 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* @PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* @PANEL_HORIZONTAL_TOTAL, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @poke32(i32 %167, i32 %168)
  %170 = load i32, i32* @PANEL_HORIZONTAL_SYNC, align 4
  %171 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %172 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* @PANEL_HORIZONTAL_SYNC_WIDTH_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %179 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* @PANEL_HORIZONTAL_SYNC_START_MASK, align 4
  %183 = and i32 %181, %182
  %184 = or i32 %177, %183
  %185 = call i32 @poke32(i32 %170, i32 %184)
  %186 = load i32, i32* @PANEL_VERTICAL_TOTAL, align 4
  %187 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %188 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = load i32, i32* @PANEL_VERTICAL_TOTAL_TOTAL_SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* @PANEL_VERTICAL_TOTAL_TOTAL_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %196 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* @PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK, align 4
  %200 = and i32 %198, %199
  %201 = or i32 %194, %200
  %202 = call i32 @poke32(i32 %186, i32 %201)
  %203 = load i32, i32* @PANEL_VERTICAL_SYNC, align 4
  %204 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %205 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PANEL_VERTICAL_SYNC_HEIGHT_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = load i32, i32* @PANEL_VERTICAL_SYNC_HEIGHT_MASK, align 4
  %210 = and i32 %208, %209
  %211 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %212 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load i32, i32* @PANEL_VERTICAL_SYNC_START_MASK, align 4
  %216 = and i32 %214, %215
  %217 = or i32 %210, %216
  %218 = call i32 @poke32(i32 %203, i32 %217)
  %219 = load i32, i32* @DISPLAY_CTRL_TIMING, align 4
  %220 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %221 = or i32 %219, %220
  store i32 %221, i32* %7, align 4
  %222 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %223 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %146
  %227 = load i32, i32* @DISPLAY_CTRL_VSYNC_PHASE, align 4
  %228 = load i32, i32* %7, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %226, %146
  %231 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %232 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %231, i32 0, i32 9
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load i32, i32* @DISPLAY_CTRL_HSYNC_PHASE, align 4
  %237 = load i32, i32* %7, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %235, %230
  %240 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %241 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load i32, i32* @DISPLAY_CTRL_CLOCK_PHASE, align 4
  %246 = load i32, i32* %7, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %244, %239
  %249 = load i32, i32* @PANEL_DISPLAY_CTRL_RESERVED_MASK, align 4
  %250 = load i32, i32* @PANEL_DISPLAY_CTRL_VSYNC, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %253 = call i32 @peek32(i32 %252)
  %254 = load i32, i32* %9, align 4
  %255 = xor i32 %254, -1
  %256 = and i32 %253, %255
  %257 = load i32, i32* @DISPLAY_CTRL_CLOCK_PHASE, align 4
  %258 = load i32, i32* @DISPLAY_CTRL_VSYNC_PHASE, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @DISPLAY_CTRL_HSYNC_PHASE, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @DISPLAY_CTRL_TIMING, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %265 = or i32 %263, %264
  %266 = xor i32 %265, -1
  %267 = and i32 %256, %266
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @poke32(i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %289, %248
  %274 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %275 = call i32 @peek32(i32 %274)
  %276 = load i32, i32* %9, align 4
  %277 = xor i32 %276, -1
  %278 = and i32 %275, %277
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %8, align 4
  %281 = or i32 %279, %280
  %282 = icmp ne i32 %278, %281
  br i1 %282, label %283, label %295

283:                                              ; preds = %273
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp sgt i32 %286, 1000
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %295

289:                                              ; preds = %283
  %290 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %8, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @poke32(i32 %290, i32 %293)
  br label %273

295:                                              ; preds = %288, %273
  br label %297

296:                                              ; preds = %140
  store i32 -1, i32* %5, align 4
  br label %297

297:                                              ; preds = %296, %295
  br label %298

298:                                              ; preds = %297, %139
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @sm750_format_pll_reg(%struct.pll_value*) #1

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @displayControlAdjust_SM750LE(%struct.mode_parameter*, i32) #1

declare dso_local i32 @peek32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
