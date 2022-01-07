; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }
%struct.pmu_res_updown_tab_entry = type { i32, i32 }
%struct.pmu_res_depend_tab_entry = type { i32, i32, i32 }

@SSB_PMURES_4325_CBUCK_BURST = common dso_local global i32 0, align 4
@SSB_PMURES_4325_LNLDO2_PU = common dso_local global i32 0, align 4
@SSB_CHIPCO_CHIPSTAT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CHST_4325_PMUTOP_2B = common dso_local global i32 0, align 4
@SSB_PMURES_4325_CLDO_CBUCK_BURST = common dso_local global i32 0, align 4
@pmu_res_updown_tab_4325a0 = common dso_local global i8* null, align 8
@pmu_res_depend_tab_4325a0 = common dso_local global i8* null, align 8
@SSB_PMURES_4328_EXT_SWITCHER_PWM = common dso_local global i32 0, align 4
@SSB_PMURES_4328_BB_SWITCHER_PWM = common dso_local global i32 0, align 4
@SSB_PMURES_4328_XTAL_EN = common dso_local global i32 0, align 4
@pmu_res_updown_tab_4328a0 = common dso_local global i8* null, align 8
@pmu_res_depend_tab_4328a0 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"ERROR: PMU resource config unknown for device %04X\0A\00", align 1
@SSB_CHIPCO_PMU_RES_TABSEL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_RES_UPDNTM = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_RES_DEPMSK = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_MINRES_MSK = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_MAXRES_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*)* @ssb_pmu_resources_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pmu_resources_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmu_res_updown_tab_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmu_res_depend_tab_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %12 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %14, align 8
  store %struct.ssb_bus* %15, %struct.ssb_bus** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.pmu_res_updown_tab_entry* null, %struct.pmu_res_updown_tab_entry** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.pmu_res_depend_tab_entry* null, %struct.pmu_res_depend_tab_entry** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %65 [
    i32 17170, label %19
    i32 17186, label %20
    i32 43222, label %20
    i32 17189, label %21
    i32 17192, label %47
    i32 21332, label %64
  ]

19:                                               ; preds = %1
  store i32 3259, i32* %4, align 4
  br label %75

20:                                               ; preds = %1, %1
  br label %75

21:                                               ; preds = %1
  %22 = load i32, i32* @SSB_PMURES_4325_CBUCK_BURST, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @SSB_PMURES_4325_LNLDO2_PU, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %28 = load i32, i32* @SSB_CHIPCO_CHIPSTAT, align 4
  %29 = call i32 @chipco_read32(%struct.ssb_chipcommon* %27, i32 %28)
  %30 = load i32, i32* @SSB_CHIPCO_CHST_4325_PMUTOP_2B, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* @SSB_PMURES_4325_CLDO_CBUCK_BURST, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %21
  store i32 1048575, i32* %5, align 4
  %39 = load i8*, i8** @pmu_res_updown_tab_4325a0, align 8
  %40 = bitcast i8* %39 to %struct.pmu_res_updown_tab_entry*
  store %struct.pmu_res_updown_tab_entry* %40, %struct.pmu_res_updown_tab_entry** %7, align 8
  %41 = load i8*, i8** @pmu_res_updown_tab_4325a0, align 8
  %42 = call i32 @ARRAY_SIZE(i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** @pmu_res_depend_tab_4325a0, align 8
  %44 = bitcast i8* %43 to %struct.pmu_res_depend_tab_entry*
  store %struct.pmu_res_depend_tab_entry* %44, %struct.pmu_res_depend_tab_entry** %9, align 8
  %45 = load i8*, i8** @pmu_res_depend_tab_4325a0, align 8
  %46 = call i32 @ARRAY_SIZE(i8* %45)
  store i32 %46, i32* %10, align 4
  br label %75

47:                                               ; preds = %1
  %48 = load i32, i32* @SSB_PMURES_4328_EXT_SWITCHER_PWM, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @SSB_PMURES_4328_BB_SWITCHER_PWM, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @SSB_PMURES_4328_XTAL_EN, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  store i32 %55, i32* %4, align 4
  store i32 1048575, i32* %5, align 4
  %56 = load i8*, i8** @pmu_res_updown_tab_4328a0, align 8
  %57 = bitcast i8* %56 to %struct.pmu_res_updown_tab_entry*
  store %struct.pmu_res_updown_tab_entry* %57, %struct.pmu_res_updown_tab_entry** %7, align 8
  %58 = load i8*, i8** @pmu_res_updown_tab_4328a0, align 8
  %59 = call i32 @ARRAY_SIZE(i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** @pmu_res_depend_tab_4328a0, align 8
  %61 = bitcast i8* %60 to %struct.pmu_res_depend_tab_entry*
  store %struct.pmu_res_depend_tab_entry* %61, %struct.pmu_res_depend_tab_entry** %9, align 8
  %62 = load i8*, i8** @pmu_res_depend_tab_4328a0, align 8
  %63 = call i32 @ARRAY_SIZE(i8* %62)
  store i32 %63, i32* %10, align 4
  br label %75

64:                                               ; preds = %1
  store i32 1048575, i32* %5, align 4
  br label %75

65:                                               ; preds = %1
  %66 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %67 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %72 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %65, %64, %47, %38, %20, %19
  %76 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %7, align 8
  %77 = icmp ne %struct.pmu_res_updown_tab_entry* %76, null
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %85 = load i32, i32* @SSB_CHIPCO_PMU_RES_TABSEL, align 4
  %86 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %86, i64 %88
  %90 = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @chipco_write32(%struct.ssb_chipcommon* %84, i32 %85, i32 %91)
  %93 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %94 = load i32, i32* @SSB_CHIPCO_PMU_RES_UPDNTM, align 4
  %95 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %95, i64 %97
  %99 = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @chipco_write32(%struct.ssb_chipcommon* %93, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %79

105:                                              ; preds = %79
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %108 = icmp ne %struct.pmu_res_depend_tab_entry* %107, null
  br i1 %108, label %109, label %168

109:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %164, %109
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %167

114:                                              ; preds = %110
  %115 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %116 = load i32, i32* @SSB_CHIPCO_PMU_RES_TABSEL, align 4
  %117 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %117, i64 %119
  %121 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @chipco_write32(%struct.ssb_chipcommon* %115, i32 %116, i32 %122)
  %124 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %124, i64 %126
  %128 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %161 [
    i32 128, label %130
    i32 130, label %140
    i32 129, label %150
  ]

130:                                              ; preds = %114
  %131 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %132 = load i32, i32* @SSB_CHIPCO_PMU_RES_DEPMSK, align 4
  %133 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %133, i64 %135
  %137 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @chipco_write32(%struct.ssb_chipcommon* %131, i32 %132, i32 %138)
  br label %163

140:                                              ; preds = %114
  %141 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %142 = load i32, i32* @SSB_CHIPCO_PMU_RES_DEPMSK, align 4
  %143 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %143, i64 %145
  %147 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @chipco_set32(%struct.ssb_chipcommon* %141, i32 %142, i32 %148)
  br label %163

150:                                              ; preds = %114
  %151 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %152 = load i32, i32* @SSB_CHIPCO_PMU_RES_DEPMSK, align 4
  %153 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %9, align 8
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %153, i64 %155
  %157 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, -1
  %160 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %151, i32 %152, i32 %159)
  br label %163

161:                                              ; preds = %114
  %162 = call i32 @WARN_ON(i32 1)
  br label %163

163:                                              ; preds = %161, %150, %140, %130
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %110

167:                                              ; preds = %110
  br label %168

168:                                              ; preds = %167, %106
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %173 = load i32, i32* @SSB_CHIPCO_PMU_MINRES_MSK, align 4
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @chipco_write32(%struct.ssb_chipcommon* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %171, %168
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %181 = load i32, i32* @SSB_CHIPCO_PMU_MAXRES_MSK, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @chipco_write32(%struct.ssb_chipcommon* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %176
  ret void
}

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_set32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_mask32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
