; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu0_pllinit_r0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu0_pllinit_r0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pmu0_plltab_entry = type { i32, i32, i64, i64 }

@SSB_PMU0_DEFAULT_XTALFREQ = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_XTALFREQ = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Programming PLL to %u.%03u MHz\0A\00", align 1
@SSB_CHIPCO_PMU_MINRES_MSK = common dso_local global i32 0, align 4
@SSB_PMURES_4328_BB_PLL_PU = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_MAXRES_MSK = common dso_local global i32 0, align 4
@SSB_PMURES_5354_BB_PLL_PU = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLKCTLST = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLKCTLST_HAVEHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to turn the PLL off!\0A\00", align 1
@SSB_PMU0_PLLCTL0 = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL0_PDIV_FREQ = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL0_PDIV_MSK = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1 = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1_STOPMOD = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1_WILD_IMSK = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1_WILD_FMSK = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1_WILD_IMSK_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL1_WILD_FMSK_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL2 = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL2_WILD_IMSKHI = common dso_local global i32 0, align 4
@SSB_PMU0_PLLCTL2_WILD_IMSKHI_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_ILP_DIV = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*, i32)* @ssb_pmu0_pllinit_r0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.pmu0_plltab_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %14, align 8
  store %struct.ssb_bus* %15, %struct.ssb_bus** %5, align 8
  store %struct.pmu0_plltab_entry* null, %struct.pmu0_plltab_entry** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 %19)
  store %struct.pmu0_plltab_entry* %20, %struct.pmu0_plltab_entry** %6, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %23 = icmp ne %struct.pmu0_plltab_entry* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @SSB_PMU0_DEFAULT_XTALFREQ, align 4
  %26 = call %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 %25)
  store %struct.pmu0_plltab_entry* %26, %struct.pmu0_plltab_entry** %6, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %29 = icmp ne %struct.pmu0_plltab_entry* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %34 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  %36 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %37 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %40 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %43 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %44 = call i32 @chipco_read32(%struct.ssb_chipcommon* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %51 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %253

55:                                               ; preds = %27
  %56 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %57 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sdiv i32 %61, 1000
  %63 = load i32, i32* %4, align 4
  %64 = srem i32 %63, 1000
  %65 = call i32 @dev_info(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %67 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %95 [
    i32 17192, label %69
    i32 21332, label %82
  ]

69:                                               ; preds = %55
  %70 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %71 = load i32, i32* @SSB_CHIPCO_PMU_MINRES_MSK, align 4
  %72 = load i32, i32* @SSB_PMURES_4328_BB_PLL_PU, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %70, i32 %71, i32 %74)
  %76 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %77 = load i32, i32* @SSB_CHIPCO_PMU_MAXRES_MSK, align 4
  %78 = load i32, i32* @SSB_PMURES_4328_BB_PLL_PU, align 4
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %76, i32 %77, i32 %80)
  br label %97

82:                                               ; preds = %55
  %83 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %84 = load i32, i32* @SSB_CHIPCO_PMU_MINRES_MSK, align 4
  %85 = load i32, i32* @SSB_PMURES_5354_BB_PLL_PU, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %83, i32 %84, i32 %87)
  %89 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %90 = load i32, i32* @SSB_CHIPCO_PMU_MAXRES_MSK, align 4
  %91 = load i32, i32* @SSB_PMURES_5354_BB_PLL_PU, align 4
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %89, i32 %90, i32 %93)
  br label %97

95:                                               ; preds = %55
  %96 = call i32 @WARN_ON(i32 1)
  br label %97

97:                                               ; preds = %95, %82, %69
  store i32 1500, i32* %10, align 4
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %103 = load i32, i32* @SSB_CHIPCO_CLKCTLST, align 4
  %104 = call i32 @chipco_read32(%struct.ssb_chipcommon* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SSB_CHIPCO_CLKCTLST_HAVEHT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %115

110:                                              ; preds = %101
  %111 = call i32 @udelay(i32 10)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* %10, align 4
  br label %98

115:                                              ; preds = %109, %98
  %116 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %117 = load i32, i32* @SSB_CHIPCO_CLKCTLST, align 4
  %118 = call i32 @chipco_read32(%struct.ssb_chipcommon* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @SSB_CHIPCO_CLKCTLST_HAVEHT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %125 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_emerg(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %123, %115
  %131 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %132 = load i32, i32* @SSB_PMU0_PLLCTL0, align 4
  %133 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @SSB_PMU0_PLLCTL0_PDIV_FREQ, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @SSB_PMU0_PLLCTL0_PDIV_MSK, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %146

141:                                              ; preds = %130
  %142 = load i32, i32* @SSB_PMU0_PLLCTL0_PDIV_MSK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %148 = load i32, i32* @SSB_PMU0_PLLCTL0, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %147, i32 %148, i32 %149)
  %151 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %152 = load i32, i32* @SSB_PMU0_PLLCTL1, align 4
  %153 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %151, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* @SSB_PMU0_PLLCTL1_STOPMOD, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_IMSK, align 4
  %159 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_FMSK, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %165 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_IMSK_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_IMSK, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %175 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_FMSK_SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = load i32, i32* @SSB_PMU0_PLLCTL1_WILD_FMSK, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  %184 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %185 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %146
  %189 = load i32, i32* @SSB_PMU0_PLLCTL1_STOPMOD, align 4
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %188, %146
  %193 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %194 = load i32, i32* @SSB_PMU0_PLLCTL1, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %193, i32 %194, i32 %195)
  %197 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %198 = load i32, i32* @SSB_PMU0_PLLCTL2, align 4
  %199 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %197, i32 %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* @SSB_PMU0_PLLCTL2_WILD_IMSKHI, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %9, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %9, align 4
  %204 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %205 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = ashr i32 %207, 4
  %209 = load i32, i32* @SSB_PMU0_PLLCTL2_WILD_IMSKHI_SHIFT, align 4
  %210 = shl i32 %208, %209
  %211 = load i32, i32* @SSB_PMU0_PLLCTL2_WILD_IMSKHI, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %9, align 4
  %215 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %216 = load i32, i32* @SSB_PMU0_PLLCTL2, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %215, i32 %216, i32 %217)
  %219 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %220 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %221 = call i32 @chipco_read32(%struct.ssb_chipcommon* %219, i32 %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 127
  %228 = sdiv i32 %227, 128
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* %7, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %7, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %6, align 8
  %241 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT, align 4
  %244 = shl i32 %242, %243
  %245 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %246 = and i32 %244, %245
  %247 = load i32, i32* %7, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %250 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @chipco_write32(%struct.ssb_chipcommon* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %192, %54
  ret void
}

declare dso_local %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @chipco_mask32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_emerg(i32, i8*) #1

declare dso_local i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
