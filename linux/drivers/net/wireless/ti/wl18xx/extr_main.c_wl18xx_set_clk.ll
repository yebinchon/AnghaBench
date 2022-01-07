; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl1271 = type { i32* }

@PART_TOP_PRCM_ELP_SOC = common dso_local global i64 0, align 8
@PRIMARY_CLK_DETECT = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"clock freq %d (%d, %d, %d, %d, %s)\00", align 1
@wl18xx_clk_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"swallow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"spit\00", align 1
@PLLSH_COEX_PLL_N = common dso_local global i32 0, align 4
@wl18xx_clk_table_coex = common dso_local global %struct.TYPE_3__* null, align 8
@PLLSH_COEX_PLL_M = common dso_local global i32 0, align 4
@PLLSH_COEX_PLL_SWALLOW_EN = common dso_local global i32 0, align 4
@PLLSH_COEX_PLL_SWALLOW_EN_VAL1 = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_N = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_M = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_Q_FACTOR_CFG_1 = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_Q_FACTOR_CFG_1_MASK = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_Q_FACTOR_CFG_2 = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_Q_FACTOR_CFG_2_MASK = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_P_FACTOR_CFG_1 = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_P_FACTOR_CFG_1_MASK = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_P_FACTOR_CFG_2 = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_P_FACTOR_CFG_2_MASK = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_SWALLOW_EN = common dso_local global i32 0, align 4
@PLLSH_WCS_PLL_SWALLOW_EN_VAL2 = common dso_local global i32 0, align 4
@PLLSH_WL_PLL_SEL = common dso_local global i32 0, align 4
@PLLSH_WL_PLL_SEL_WCS_PLL = common dso_local global i32 0, align 4
@PLLSH_WL_PLL_EN = common dso_local global i32 0, align 4
@PLLSH_WL_PLL_EN_VAL1 = common dso_local global i32 0, align 4
@PLLSH_WL_PLL_EN_VAL2 = common dso_local global i32 0, align 4
@PLLSH_COEX_PLL_SWALLOW_EN_VAL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_set_clk(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @PART_TOP_PRCM_ELP_SOC, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i32 @wlcore_set_partition(%struct.wl1271* %5, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %214

15:                                               ; preds = %1
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = load i32, i32* @PRIMARY_CLK_DETECT, align 4
  %18 = call i32 @wl18xx_top_reg_read(%struct.wl1271* %16, i32 %17, i64* %3)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %214

22:                                               ; preds = %15
  %23 = load i32, i32* @DEBUG_BOOT, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @wl1271_debug(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %29, i32 %34, i32 %39, i32 %44, i8* %52)
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = load i32, i32* @PLLSH_COEX_PLL_N, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wl18xx_clk_table_coex, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %54, i32 %55, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %22
  br label %214

65:                                               ; preds = %22
  %66 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %67 = load i32, i32* @PLLSH_COEX_PLL_M, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wl18xx_clk_table_coex, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %66, i32 %67, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %214

77:                                               ; preds = %65
  %78 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %79 = load i32, i32* @PLLSH_COEX_PLL_SWALLOW_EN, align 4
  %80 = load i32, i32* @PLLSH_COEX_PLL_SWALLOW_EN_VAL1, align 4
  %81 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %78, i32 %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %214

85:                                               ; preds = %77
  %86 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %87 = load i32, i32* @PLLSH_WCS_PLL_N, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %86, i32 %87, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %214

97:                                               ; preds = %85
  %98 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %99 = load i32, i32* @PLLSH_WCS_PLL_M, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %98, i32 %99, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %214

109:                                              ; preds = %97
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %111 = load i64, i64* %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %175

116:                                              ; preds = %109
  %117 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %118 = load i32, i32* @PLLSH_WCS_PLL_Q_FACTOR_CFG_1, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %120 = load i64, i64* %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PLLSH_WCS_PLL_Q_FACTOR_CFG_1_MASK, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %117, i32 %118, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %214

130:                                              ; preds = %116
  %131 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %132 = load i32, i32* @PLLSH_WCS_PLL_Q_FACTOR_CFG_2, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 16
  %139 = load i32, i32* @PLLSH_WCS_PLL_Q_FACTOR_CFG_2_MASK, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %131, i32 %132, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  br label %214

145:                                              ; preds = %130
  %146 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %147 = load i32, i32* @PLLSH_WCS_PLL_P_FACTOR_CFG_1, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PLLSH_WCS_PLL_P_FACTOR_CFG_1_MASK, align 4
  %154 = and i32 %152, %153
  %155 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %146, i32 %147, i32 %154)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %214

159:                                              ; preds = %145
  %160 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %161 = load i32, i32* @PLLSH_WCS_PLL_P_FACTOR_CFG_2, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wl18xx_clk_table, align 8
  %163 = load i64, i64* %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = ashr i32 %166, 16
  %168 = load i32, i32* @PLLSH_WCS_PLL_P_FACTOR_CFG_2_MASK, align 4
  %169 = and i32 %167, %168
  %170 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %160, i32 %161, i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %159
  br label %214

174:                                              ; preds = %159
  br label %184

175:                                              ; preds = %109
  %176 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %177 = load i32, i32* @PLLSH_WCS_PLL_SWALLOW_EN, align 4
  %178 = load i32, i32* @PLLSH_WCS_PLL_SWALLOW_EN_VAL2, align 4
  %179 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %176, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %214

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %174
  %185 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %186 = load i32, i32* @PLLSH_WL_PLL_SEL, align 4
  %187 = load i32, i32* @PLLSH_WL_PLL_SEL_WCS_PLL, align 4
  %188 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %185, i32 %186, i32 %187)
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %214

192:                                              ; preds = %184
  %193 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %194 = load i32, i32* @PLLSH_WL_PLL_EN, align 4
  %195 = load i32, i32* @PLLSH_WL_PLL_EN_VAL1, align 4
  %196 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %193, i32 %194, i32 %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %214

200:                                              ; preds = %192
  %201 = call i32 @udelay(i32 1000)
  %202 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %203 = load i32, i32* @PLLSH_WL_PLL_EN, align 4
  %204 = load i32, i32* @PLLSH_WL_PLL_EN_VAL2, align 4
  %205 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %202, i32 %203, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %214

209:                                              ; preds = %200
  %210 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %211 = load i32, i32* @PLLSH_COEX_PLL_SWALLOW_EN, align 4
  %212 = load i32, i32* @PLLSH_COEX_PLL_SWALLOW_EN_VAL2, align 4
  %213 = call i32 @wl18xx_top_reg_write(%struct.wl1271* %210, i32 %211, i32 %212)
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %209, %208, %199, %191, %182, %173, %158, %144, %129, %108, %96, %84, %76, %64, %21, %14
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wl18xx_top_reg_read(%struct.wl1271*, i32, i64*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @wl18xx_top_reg_write(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
