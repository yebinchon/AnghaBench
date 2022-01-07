; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu1_pllinit_r0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu1_pllinit_r0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pmu1_plltab_entry = type { i32, i32, i64, i64, i64, i64 }

@SSB_PMU1_DEFAULT_XTALFREQ = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_XTALFREQ = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Programming PLL to %u.%03u MHz\0A\00", align 1
@SSB_CHIPCO_PMU_MINRES_MSK = common dso_local global i32 0, align 4
@SSB_PMURES_4325_BBPLL_PWRSW_PU = common dso_local global i32 0, align 4
@SSB_PMURES_4325_HT_AVAIL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_MAXRES_MSK = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLKCTLST = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLKCTLST_HAVEHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to turn the PLL off!\0A\00", align 1
@SSB_PMU1_PLLCTL0 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL0_P1DIV = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL0_P2DIV = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL0_P1DIV_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL0_P2DIV_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2_NDIVINT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2_NDIVMODE = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2_NDIVINT_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2_NDIVMODE_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL3 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL3_NDIVFRAC = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL3_NDIVFRAC_SHIFT = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL5 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL5_CLKDRV = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL5_CLKDRV_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_ILP_DIV = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*, i32)* @ssb_pmu1_pllinit_r0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pmu1_pllinit_r0(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.pmu1_plltab_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %15, align 8
  store %struct.ssb_bus* %16, %struct.ssb_bus** %5, align 8
  store %struct.pmu1_plltab_entry* null, %struct.pmu1_plltab_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 17170
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %23 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 20000, i32* %24, align 8
  br label %273

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32 %29)
  store %struct.pmu1_plltab_entry* %30, %struct.pmu1_plltab_entry** %6, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %33 = icmp ne %struct.pmu1_plltab_entry* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @SSB_PMU1_DEFAULT_XTALFREQ, align 4
  %36 = call %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32 %35)
  store %struct.pmu1_plltab_entry* %36, %struct.pmu1_plltab_entry** %6, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %39 = icmp ne %struct.pmu1_plltab_entry* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %44 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  %46 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %47 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %50 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %53 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %54 = call i32 @chipco_read32(%struct.ssb_chipcommon* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %61 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  br label %273

65:                                               ; preds = %37
  %66 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %67 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %71, 1000
  %73 = load i32, i32* %4, align 4
  %74 = srem i32 %73, 1000
  %75 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %77 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %98 [
    i32 17189, label %79
  ]

79:                                               ; preds = %65
  %80 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %81 = load i32, i32* @SSB_CHIPCO_PMU_MINRES_MSK, align 4
  %82 = load i32, i32* @SSB_PMURES_4325_BBPLL_PWRSW_PU, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* @SSB_PMURES_4325_HT_AVAIL, align 4
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  %87 = xor i32 %86, -1
  %88 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %80, i32 %81, i32 %87)
  %89 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %90 = load i32, i32* @SSB_CHIPCO_PMU_MAXRES_MSK, align 4
  %91 = load i32, i32* @SSB_PMURES_4325_BBPLL_PWRSW_PU, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* @SSB_PMURES_4325_HT_AVAIL, align 4
  %94 = shl i32 1, %93
  %95 = or i32 %92, %94
  %96 = xor i32 %95, -1
  %97 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %89, i32 %90, i32 %96)
  store i32 2236962, i32* %7, align 4
  br label %100

98:                                               ; preds = %65
  %99 = call i32 @WARN_ON(i32 1)
  br label %100

100:                                              ; preds = %98, %79
  store i32 1500, i32* %11, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %106 = load i32, i32* @SSB_CHIPCO_CLKCTLST, align 4
  %107 = call i32 @chipco_read32(%struct.ssb_chipcommon* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SSB_CHIPCO_CLKCTLST_HAVEHT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  br label %118

113:                                              ; preds = %104
  %114 = call i32 @udelay(i32 10)
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %101

118:                                              ; preds = %112, %101
  %119 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %120 = load i32, i32* @SSB_CHIPCO_CLKCTLST, align 4
  %121 = call i32 @chipco_read32(%struct.ssb_chipcommon* %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @SSB_CHIPCO_CLKCTLST_HAVEHT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %128 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_emerg(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %126, %118
  %134 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %135 = load i32, i32* @SSB_PMU1_PLLCTL0, align 4
  %136 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %134, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* @SSB_PMU1_PLLCTL0_P1DIV, align 4
  %138 = load i32, i32* @SSB_PMU1_PLLCTL0_P2DIV, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %144 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* @SSB_PMU1_PLLCTL0_P1DIV_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* @SSB_PMU1_PLLCTL0_P1DIV, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %154 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* @SSB_PMU1_PLLCTL0_P2DIV_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* @SSB_PMU1_PLLCTL0_P2DIV, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %164 = load i32, i32* @SSB_PMU1_PLLCTL0, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %163, i32 %164, i32 %165)
  %167 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %168 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %169 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %167, i32 %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVINT, align 4
  %171 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVMODE, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %9, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %177 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVINT_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVINT, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVMODE_SHIFT, align 4
  %187 = shl i32 1, %186
  %188 = load i32, i32* @SSB_PMU1_PLLCTL2_NDIVMODE, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  %192 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %193 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %192, i32 %193, i32 %194)
  %196 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %197 = load i32, i32* @SSB_PMU1_PLLCTL3, align 4
  %198 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %196, i32 %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* @SSB_PMU1_PLLCTL3_NDIVFRAC, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %9, align 4
  %203 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %204 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i32, i32* @SSB_PMU1_PLLCTL3_NDIVFRAC_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = load i32, i32* @SSB_PMU1_PLLCTL3_NDIVFRAC, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %214 = load i32, i32* @SSB_PMU1_PLLCTL3, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %213, i32 %214, i32 %215)
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %133
  %220 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %221 = load i32, i32* @SSB_PMU1_PLLCTL5, align 4
  %222 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %220, i32 %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* @SSB_PMU1_PLLCTL5_CLKDRV, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %9, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @SSB_PMU1_PLLCTL5_CLKDRV_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load i32, i32* @SSB_PMU1_PLLCTL5_CLKDRV, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %9, align 4
  %234 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %235 = load i32, i32* @SSB_PMU1_PLLCTL5, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %219, %133
  %239 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %240 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %241 = call i32 @chipco_read32(%struct.ssb_chipcommon* %239, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV, align 4
  %243 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %244 = or i32 %242, %243
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %10, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %10, align 4
  %248 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %249 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 127
  %252 = sdiv i32 %251, 128
  %253 = sub nsw i32 %252, 1
  %254 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = load i32, i32* @SSB_CHIPCO_PMU_CTL_ILP_DIV, align 4
  %257 = and i32 %255, %256
  %258 = load i32, i32* %10, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %10, align 4
  %260 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %6, align 8
  %261 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT, align 4
  %264 = shl i32 %262, %263
  %265 = load i32, i32* @SSB_CHIPCO_PMU_CTL_XTALFREQ, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* %10, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %10, align 4
  %269 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %270 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %271 = load i32, i32* %10, align 4
  %272 = call i32 @chipco_write32(%struct.ssb_chipcommon* %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %238, %64, %21
  ret void
}

declare dso_local %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32) #1

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
