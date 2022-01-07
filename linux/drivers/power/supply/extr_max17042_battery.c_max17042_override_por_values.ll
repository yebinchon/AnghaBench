; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_override_por_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_override_por_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { i64, %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { %struct.max17042_config_data* }
%struct.max17042_config_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }

@MAX17042_TGAIN = common dso_local global i32 0, align 4
@MAx17042_TOFF = common dso_local global i32 0, align 4
@MAX17042_CGAIN = common dso_local global i32 0, align 4
@MAX17042_COFF = common dso_local global i32 0, align 4
@MAX17042_VALRT_Th = common dso_local global i32 0, align 4
@MAX17042_TALRT_Th = common dso_local global i32 0, align 4
@MAX17042_SALRT_Th = common dso_local global i32 0, align 4
@MAX17042_CONFIG = common dso_local global i32 0, align 4
@MAX17042_SHDNTIMER = common dso_local global i32 0, align 4
@MAX17042_DesignCap = common dso_local global i32 0, align 4
@MAX17042_ICHGTerm = common dso_local global i32 0, align 4
@MAX17042_AtRate = common dso_local global i32 0, align 4
@MAX17042_LearnCFG = common dso_local global i32 0, align 4
@MAX17042_FilterCFG = common dso_local global i32 0, align 4
@MAX17042_RelaxCFG = common dso_local global i32 0, align 4
@MAX17042_MiscCFG = common dso_local global i32 0, align 4
@MAX17042_MaskSOC = common dso_local global i32 0, align 4
@MAX17042_FullCAP = common dso_local global i32 0, align 4
@MAX17042_FullCAPNom = common dso_local global i32 0, align 4
@MAXIM_DEVICE_TYPE_MAX17042 = common dso_local global i64 0, align 8
@MAX17042_SOC_empty = common dso_local global i32 0, align 4
@MAX17042_LAvg_empty = common dso_local global i32 0, align 4
@MAX17042_dQacc = common dso_local global i32 0, align 4
@MAX17042_dPacc = common dso_local global i32 0, align 4
@MAX17042_V_empty = common dso_local global i32 0, align 4
@MAX17047_V_empty = common dso_local global i32 0, align 4
@MAX17042_TempNom = common dso_local global i32 0, align 4
@MAX17042_TempLim = common dso_local global i32 0, align 4
@MAX17042_FCTC = common dso_local global i32 0, align 4
@MAX17042_RCOMP0 = common dso_local global i32 0, align 4
@MAX17042_TempCo = common dso_local global i32 0, align 4
@MAX17042_EmptyTempCo = common dso_local global i32 0, align 4
@MAX17042_K_empty0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max17042_chip*)* @max17042_override_por_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17042_override_por_values(%struct.max17042_chip* %0) #0 {
  %2 = alloca %struct.max17042_chip*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.max17042_config_data*, align 8
  store %struct.max17042_chip* %0, %struct.max17042_chip** %2, align 8
  %5 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %6 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %5, i32 0, i32 2
  %7 = load %struct.regmap*, %struct.regmap** %6, align 8
  store %struct.regmap* %7, %struct.regmap** %3, align 8
  %8 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %9 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.max17042_config_data*, %struct.max17042_config_data** %11, align 8
  store %struct.max17042_config_data* %12, %struct.max17042_config_data** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = load i32, i32* @MAX17042_TGAIN, align 4
  %15 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %16 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %15, i32 0, i32 30
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max17042_override_por(%struct.regmap* %13, i32 %14, i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load i32, i32* @MAx17042_TOFF, align 4
  %21 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %22 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %21, i32 0, i32 29
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @max17042_override_por(%struct.regmap* %19, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @MAX17042_CGAIN, align 4
  %27 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %28 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %27, i32 0, i32 28
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max17042_override_por(%struct.regmap* %25, i32 %26, i32 %29)
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = load i32, i32* @MAX17042_COFF, align 4
  %33 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %34 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %33, i32 0, i32 27
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max17042_override_por(%struct.regmap* %31, i32 %32, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %3, align 8
  %38 = load i32, i32* @MAX17042_VALRT_Th, align 4
  %39 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %40 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %39, i32 0, i32 26
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @max17042_override_por(%struct.regmap* %37, i32 %38, i32 %41)
  %43 = load %struct.regmap*, %struct.regmap** %3, align 8
  %44 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %45 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %46 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %45, i32 0, i32 25
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max17042_override_por(%struct.regmap* %43, i32 %44, i32 %47)
  %49 = load %struct.regmap*, %struct.regmap** %3, align 8
  %50 = load i32, i32* @MAX17042_SALRT_Th, align 4
  %51 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %52 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %51, i32 0, i32 24
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @max17042_override_por(%struct.regmap* %49, i32 %50, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %3, align 8
  %56 = load i32, i32* @MAX17042_CONFIG, align 4
  %57 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %58 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %57, i32 0, i32 23
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @max17042_override_por(%struct.regmap* %55, i32 %56, i32 %59)
  %61 = load %struct.regmap*, %struct.regmap** %3, align 8
  %62 = load i32, i32* @MAX17042_SHDNTIMER, align 4
  %63 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %64 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %63, i32 0, i32 22
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @max17042_override_por(%struct.regmap* %61, i32 %62, i32 %65)
  %67 = load %struct.regmap*, %struct.regmap** %3, align 8
  %68 = load i32, i32* @MAX17042_DesignCap, align 4
  %69 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %70 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %69, i32 0, i32 21
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @max17042_override_por(%struct.regmap* %67, i32 %68, i32 %71)
  %73 = load %struct.regmap*, %struct.regmap** %3, align 8
  %74 = load i32, i32* @MAX17042_ICHGTerm, align 4
  %75 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %76 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %75, i32 0, i32 20
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @max17042_override_por(%struct.regmap* %73, i32 %74, i32 %77)
  %79 = load %struct.regmap*, %struct.regmap** %3, align 8
  %80 = load i32, i32* @MAX17042_AtRate, align 4
  %81 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %82 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %81, i32 0, i32 19
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @max17042_override_por(%struct.regmap* %79, i32 %80, i32 %83)
  %85 = load %struct.regmap*, %struct.regmap** %3, align 8
  %86 = load i32, i32* @MAX17042_LearnCFG, align 4
  %87 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %88 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %87, i32 0, i32 18
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @max17042_override_por(%struct.regmap* %85, i32 %86, i32 %89)
  %91 = load %struct.regmap*, %struct.regmap** %3, align 8
  %92 = load i32, i32* @MAX17042_FilterCFG, align 4
  %93 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %94 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @max17042_override_por(%struct.regmap* %91, i32 %92, i32 %95)
  %97 = load %struct.regmap*, %struct.regmap** %3, align 8
  %98 = load i32, i32* @MAX17042_RelaxCFG, align 4
  %99 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %100 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %99, i32 0, i32 16
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @max17042_override_por(%struct.regmap* %97, i32 %98, i32 %101)
  %103 = load %struct.regmap*, %struct.regmap** %3, align 8
  %104 = load i32, i32* @MAX17042_MiscCFG, align 4
  %105 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %106 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @max17042_override_por(%struct.regmap* %103, i32 %104, i32 %107)
  %109 = load %struct.regmap*, %struct.regmap** %3, align 8
  %110 = load i32, i32* @MAX17042_MaskSOC, align 4
  %111 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %112 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @max17042_override_por(%struct.regmap* %109, i32 %110, i32 %113)
  %115 = load %struct.regmap*, %struct.regmap** %3, align 8
  %116 = load i32, i32* @MAX17042_FullCAP, align 4
  %117 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %118 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @max17042_override_por(%struct.regmap* %115, i32 %116, i32 %119)
  %121 = load %struct.regmap*, %struct.regmap** %3, align 8
  %122 = load i32, i32* @MAX17042_FullCAPNom, align 4
  %123 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %124 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @max17042_override_por(%struct.regmap* %121, i32 %122, i32 %125)
  %127 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %128 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAXIM_DEVICE_TYPE_MAX17042, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %1
  %133 = load %struct.regmap*, %struct.regmap** %3, align 8
  %134 = load i32, i32* @MAX17042_SOC_empty, align 4
  %135 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %136 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @max17042_override_por(%struct.regmap* %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132, %1
  %140 = load %struct.regmap*, %struct.regmap** %3, align 8
  %141 = load i32, i32* @MAX17042_LAvg_empty, align 4
  %142 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %143 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @max17042_override_por(%struct.regmap* %140, i32 %141, i32 %144)
  %146 = load %struct.regmap*, %struct.regmap** %3, align 8
  %147 = load i32, i32* @MAX17042_dQacc, align 4
  %148 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %149 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @max17042_override_por(%struct.regmap* %146, i32 %147, i32 %150)
  %152 = load %struct.regmap*, %struct.regmap** %3, align 8
  %153 = load i32, i32* @MAX17042_dPacc, align 4
  %154 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %155 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @max17042_override_por(%struct.regmap* %152, i32 %153, i32 %156)
  %158 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %159 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @MAXIM_DEVICE_TYPE_MAX17042, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %139
  %164 = load %struct.regmap*, %struct.regmap** %3, align 8
  %165 = load i32, i32* @MAX17042_V_empty, align 4
  %166 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %167 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @max17042_override_por(%struct.regmap* %164, i32 %165, i32 %168)
  br label %177

170:                                              ; preds = %139
  %171 = load %struct.regmap*, %struct.regmap** %3, align 8
  %172 = load i32, i32* @MAX17047_V_empty, align 4
  %173 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %174 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @max17042_override_por(%struct.regmap* %171, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.regmap*, %struct.regmap** %3, align 8
  %179 = load i32, i32* @MAX17042_TempNom, align 4
  %180 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %181 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @max17042_override_por(%struct.regmap* %178, i32 %179, i32 %182)
  %184 = load %struct.regmap*, %struct.regmap** %3, align 8
  %185 = load i32, i32* @MAX17042_TempLim, align 4
  %186 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %187 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @max17042_override_por(%struct.regmap* %184, i32 %185, i32 %188)
  %190 = load %struct.regmap*, %struct.regmap** %3, align 8
  %191 = load i32, i32* @MAX17042_FCTC, align 4
  %192 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %193 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @max17042_override_por(%struct.regmap* %190, i32 %191, i32 %194)
  %196 = load %struct.regmap*, %struct.regmap** %3, align 8
  %197 = load i32, i32* @MAX17042_RCOMP0, align 4
  %198 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %199 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @max17042_override_por(%struct.regmap* %196, i32 %197, i32 %200)
  %202 = load %struct.regmap*, %struct.regmap** %3, align 8
  %203 = load i32, i32* @MAX17042_TempCo, align 4
  %204 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %205 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @max17042_override_por(%struct.regmap* %202, i32 %203, i32 %206)
  %208 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %209 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %177
  %213 = load %struct.regmap*, %struct.regmap** %3, align 8
  %214 = load i32, i32* @MAX17042_EmptyTempCo, align 4
  %215 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %216 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @max17042_override_por(%struct.regmap* %213, i32 %214, i32 %217)
  %219 = load %struct.regmap*, %struct.regmap** %3, align 8
  %220 = load i32, i32* @MAX17042_K_empty0, align 4
  %221 = load %struct.max17042_config_data*, %struct.max17042_config_data** %4, align 8
  %222 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @max17042_override_por(%struct.regmap* %219, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %212, %177
  ret void
}

declare dso_local i32 @max17042_override_por(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
