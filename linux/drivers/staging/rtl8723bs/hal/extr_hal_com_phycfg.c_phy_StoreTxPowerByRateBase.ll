; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_StoreTxPowerByRateBase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_StoreTxPowerByRateBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@RF_1TX = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@CCK = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@RF_3TX = common dso_local global i32 0, align 4
@MGN_MCS23 = common dso_local global i32 0, align 4
@HT_MCS16_MCS23 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS7 = common dso_local global i32 0, align 4
@VHT_1SSMCS0_1SSMCS9 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS7 = common dso_local global i32 0, align 4
@VHT_2SSMCS0_2SSMCS9 = common dso_local global i32 0, align 4
@MGN_VHT3SS_MCS7 = common dso_local global i32 0, align 4
@VHT_3SSMCS0_3SSMCS9 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_StoreTxPowerByRateBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_StoreTxPowerByRateBase(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %206, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ODM_RF_PATH_B, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %209

10:                                               ; preds = %6
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @BAND_ON_2_4G, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @RF_1TX, align 4
  %15 = load i32, i32* @MGN_11M, align 4
  %16 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %11, i32 %12, i64 %13, i32 %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @BAND_ON_2_4G, align 4
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @CCK, align 4
  %21 = load i32, i32* @RF_1TX, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %17, i32 %18, i64 %19, i32 %20, i32 %21, i64 %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load i32, i32* @BAND_ON_2_4G, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* @RF_1TX, align 4
  %28 = load i32, i32* @MGN_54M, align 4
  %29 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %24, i32 %25, i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i32, i32* @BAND_ON_2_4G, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @OFDM, align 4
  %34 = load i32, i32* @RF_1TX, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %30, i32 %31, i64 %32, i32 %33, i32 %34, i64 %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i32, i32* @BAND_ON_2_4G, align 4
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @RF_1TX, align 4
  %41 = load i32, i32* @MGN_MCS7, align 4
  %42 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %37, i32 %38, i64 %39, i32 %40, i32 %41)
  store i64 %42, i64* %4, align 8
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load i32, i32* @BAND_ON_2_4G, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @HT_MCS0_MCS7, align 4
  %47 = load i32, i32* @RF_1TX, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %43, i32 %44, i64 %45, i32 %46, i32 %47, i64 %48)
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = load i32, i32* @BAND_ON_2_4G, align 4
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* @RF_2TX, align 4
  %54 = load i32, i32* @MGN_MCS15, align 4
  %55 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %50, i32 %51, i64 %52, i32 %53, i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = load i32, i32* @BAND_ON_2_4G, align 4
  %58 = load i64, i64* %3, align 8
  %59 = load i32, i32* @HT_MCS8_MCS15, align 4
  %60 = load i32, i32* @RF_2TX, align 4
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %56, i32 %57, i64 %58, i32 %59, i32 %60, i64 %61)
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = load i32, i32* @BAND_ON_2_4G, align 4
  %65 = load i64, i64* %3, align 8
  %66 = load i32, i32* @RF_3TX, align 4
  %67 = load i32, i32* @MGN_MCS23, align 4
  %68 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %63, i32 %64, i64 %65, i32 %66, i32 %67)
  store i64 %68, i64* %4, align 8
  %69 = load %struct.adapter*, %struct.adapter** %2, align 8
  %70 = load i32, i32* @BAND_ON_2_4G, align 4
  %71 = load i64, i64* %3, align 8
  %72 = load i32, i32* @HT_MCS16_MCS23, align 4
  %73 = load i32, i32* @RF_3TX, align 4
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %69, i32 %70, i64 %71, i32 %72, i32 %73, i64 %74)
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = load i32, i32* @BAND_ON_2_4G, align 4
  %78 = load i64, i64* %3, align 8
  %79 = load i32, i32* @RF_1TX, align 4
  %80 = load i32, i32* @MGN_VHT1SS_MCS7, align 4
  %81 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %76, i32 %77, i64 %78, i32 %79, i32 %80)
  store i64 %81, i64* %4, align 8
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = load i32, i32* @BAND_ON_2_4G, align 4
  %84 = load i64, i64* %3, align 8
  %85 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %86 = load i32, i32* @RF_1TX, align 4
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %82, i32 %83, i64 %84, i32 %85, i32 %86, i64 %87)
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = load i32, i32* @BAND_ON_2_4G, align 4
  %91 = load i64, i64* %3, align 8
  %92 = load i32, i32* @RF_2TX, align 4
  %93 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  %94 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %89, i32 %90, i64 %91, i32 %92, i32 %93)
  store i64 %94, i64* %4, align 8
  %95 = load %struct.adapter*, %struct.adapter** %2, align 8
  %96 = load i32, i32* @BAND_ON_2_4G, align 4
  %97 = load i64, i64* %3, align 8
  %98 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %99 = load i32, i32* @RF_2TX, align 4
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %95, i32 %96, i64 %97, i32 %98, i32 %99, i64 %100)
  %102 = load %struct.adapter*, %struct.adapter** %2, align 8
  %103 = load i32, i32* @BAND_ON_2_4G, align 4
  %104 = load i64, i64* %3, align 8
  %105 = load i32, i32* @RF_3TX, align 4
  %106 = load i32, i32* @MGN_VHT3SS_MCS7, align 4
  %107 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %102, i32 %103, i64 %104, i32 %105, i32 %106)
  store i64 %107, i64* %4, align 8
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = load i32, i32* @BAND_ON_2_4G, align 4
  %110 = load i64, i64* %3, align 8
  %111 = load i32, i32* @VHT_3SSMCS0_3SSMCS9, align 4
  %112 = load i32, i32* @RF_3TX, align 4
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %108, i32 %109, i64 %110, i32 %111, i32 %112, i64 %113)
  %115 = load %struct.adapter*, %struct.adapter** %2, align 8
  %116 = load i32, i32* @BAND_ON_5G, align 4
  %117 = load i64, i64* %3, align 8
  %118 = load i32, i32* @RF_1TX, align 4
  %119 = load i32, i32* @MGN_54M, align 4
  %120 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %115, i32 %116, i64 %117, i32 %118, i32 %119)
  store i64 %120, i64* %4, align 8
  %121 = load %struct.adapter*, %struct.adapter** %2, align 8
  %122 = load i32, i32* @BAND_ON_5G, align 4
  %123 = load i64, i64* %3, align 8
  %124 = load i32, i32* @OFDM, align 4
  %125 = load i32, i32* @RF_1TX, align 4
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %121, i32 %122, i64 %123, i32 %124, i32 %125, i64 %126)
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = load i32, i32* @BAND_ON_5G, align 4
  %130 = load i64, i64* %3, align 8
  %131 = load i32, i32* @RF_1TX, align 4
  %132 = load i32, i32* @MGN_MCS7, align 4
  %133 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %128, i32 %129, i64 %130, i32 %131, i32 %132)
  store i64 %133, i64* %4, align 8
  %134 = load %struct.adapter*, %struct.adapter** %2, align 8
  %135 = load i32, i32* @BAND_ON_5G, align 4
  %136 = load i64, i64* %3, align 8
  %137 = load i32, i32* @HT_MCS0_MCS7, align 4
  %138 = load i32, i32* @RF_1TX, align 4
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %134, i32 %135, i64 %136, i32 %137, i32 %138, i64 %139)
  %141 = load %struct.adapter*, %struct.adapter** %2, align 8
  %142 = load i32, i32* @BAND_ON_5G, align 4
  %143 = load i64, i64* %3, align 8
  %144 = load i32, i32* @RF_2TX, align 4
  %145 = load i32, i32* @MGN_MCS15, align 4
  %146 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %141, i32 %142, i64 %143, i32 %144, i32 %145)
  store i64 %146, i64* %4, align 8
  %147 = load %struct.adapter*, %struct.adapter** %2, align 8
  %148 = load i32, i32* @BAND_ON_5G, align 4
  %149 = load i64, i64* %3, align 8
  %150 = load i32, i32* @HT_MCS8_MCS15, align 4
  %151 = load i32, i32* @RF_2TX, align 4
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %147, i32 %148, i64 %149, i32 %150, i32 %151, i64 %152)
  %154 = load %struct.adapter*, %struct.adapter** %2, align 8
  %155 = load i32, i32* @BAND_ON_5G, align 4
  %156 = load i64, i64* %3, align 8
  %157 = load i32, i32* @RF_3TX, align 4
  %158 = load i32, i32* @MGN_MCS23, align 4
  %159 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %154, i32 %155, i64 %156, i32 %157, i32 %158)
  store i64 %159, i64* %4, align 8
  %160 = load %struct.adapter*, %struct.adapter** %2, align 8
  %161 = load i32, i32* @BAND_ON_5G, align 4
  %162 = load i64, i64* %3, align 8
  %163 = load i32, i32* @HT_MCS16_MCS23, align 4
  %164 = load i32, i32* @RF_3TX, align 4
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %160, i32 %161, i64 %162, i32 %163, i32 %164, i64 %165)
  %167 = load %struct.adapter*, %struct.adapter** %2, align 8
  %168 = load i32, i32* @BAND_ON_5G, align 4
  %169 = load i64, i64* %3, align 8
  %170 = load i32, i32* @RF_1TX, align 4
  %171 = load i32, i32* @MGN_VHT1SS_MCS7, align 4
  %172 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %167, i32 %168, i64 %169, i32 %170, i32 %171)
  store i64 %172, i64* %4, align 8
  %173 = load %struct.adapter*, %struct.adapter** %2, align 8
  %174 = load i32, i32* @BAND_ON_5G, align 4
  %175 = load i64, i64* %3, align 8
  %176 = load i32, i32* @VHT_1SSMCS0_1SSMCS9, align 4
  %177 = load i32, i32* @RF_1TX, align 4
  %178 = load i64, i64* %4, align 8
  %179 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %173, i32 %174, i64 %175, i32 %176, i32 %177, i64 %178)
  %180 = load %struct.adapter*, %struct.adapter** %2, align 8
  %181 = load i32, i32* @BAND_ON_5G, align 4
  %182 = load i64, i64* %3, align 8
  %183 = load i32, i32* @RF_2TX, align 4
  %184 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  %185 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %180, i32 %181, i64 %182, i32 %183, i32 %184)
  store i64 %185, i64* %4, align 8
  %186 = load %struct.adapter*, %struct.adapter** %2, align 8
  %187 = load i32, i32* @BAND_ON_5G, align 4
  %188 = load i64, i64* %3, align 8
  %189 = load i32, i32* @VHT_2SSMCS0_2SSMCS9, align 4
  %190 = load i32, i32* @RF_2TX, align 4
  %191 = load i64, i64* %4, align 8
  %192 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %186, i32 %187, i64 %188, i32 %189, i32 %190, i64 %191)
  %193 = load %struct.adapter*, %struct.adapter** %2, align 8
  %194 = load i32, i32* @BAND_ON_5G, align 4
  %195 = load i64, i64* %3, align 8
  %196 = load i32, i32* @RF_3TX, align 4
  %197 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  %198 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %193, i32 %194, i64 %195, i32 %196, i32 %197)
  store i64 %198, i64* %4, align 8
  %199 = load %struct.adapter*, %struct.adapter** %2, align 8
  %200 = load i32, i32* @BAND_ON_5G, align 4
  %201 = load i64, i64* %3, align 8
  %202 = load i32, i32* @VHT_3SSMCS0_3SSMCS9, align 4
  %203 = load i32, i32* @RF_3TX, align 4
  %204 = load i64, i64* %4, align 8
  %205 = call i32 @phy_SetTxPowerByRateBase(%struct.adapter* %199, i32 %200, i64 %201, i32 %202, i32 %203, i64 %204)
  br label %206

206:                                              ; preds = %10
  %207 = load i64, i64* %3, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %3, align 8
  br label %6

209:                                              ; preds = %6
  ret void
}

declare dso_local i64 @PHY_GetTxPowerByRate(%struct.adapter*, i32, i64, i32, i32) #1

declare dso_local i32 @phy_SetTxPowerByRateBase(%struct.adapter*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
