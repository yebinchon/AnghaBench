; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_phy_init_bb_rf_register_definition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_phy_init_bb_rf_register_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8*, i32, i8*, i8*, i8* }

@RFPGA0_XAB_RFINTERFACESW = common dso_local global i8* null, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i8* null, align 8
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i8* null, align 8
@RA_LSSIWRITE_8821A = common dso_local global i32 0, align 4
@RB_LSSIWRITE_8821A = common dso_local global i32 0, align 4
@RHSSIREAD_8821AE = common dso_local global i8* null, align 8
@RA_SIREAD_8821A = common dso_local global i32 0, align 4
@RB_SIREAD_8821A = common dso_local global i32 0, align 4
@RA_PIREAD_8821A = common dso_local global i32 0, align 4
@RB_PIREAD_8821A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @phy_init_bb_rf_register_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_init_bb_rf_register_definition(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.rtl_phy* %8, %struct.rtl_phy** %4, align 8
  %9 = load i8*, i8** @RFPGA0_XAB_RFINTERFACESW, align 8
  %10 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  store i8* %9, i8** %15, align 8
  %16 = load i8*, i8** @RFPGA0_XAB_RFINTERFACESW, align 8
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @RF90_PATH_B, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i8* %16, i8** %22, align 8
  %23 = load i8*, i8** @RFPGA0_XA_RFINTERFACEOE, align 8
  %24 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @RF90_PATH_A, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store i8* %23, i8** %29, align 8
  %30 = load i8*, i8** @RFPGA0_XB_RFINTERFACEOE, align 8
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @RF90_PATH_B, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i8* %30, i8** %36, align 8
  %37 = load i8*, i8** @RFPGA0_XA_RFINTERFACEOE, align 8
  %38 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @RF90_PATH_A, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i8* %37, i8** %43, align 8
  %44 = load i8*, i8** @RFPGA0_XB_RFINTERFACEOE, align 8
  %45 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* @RF90_PATH_B, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i8* %44, i8** %50, align 8
  %51 = load i32, i32* @RA_LSSIWRITE_8821A, align 4
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @RF90_PATH_A, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %51, i32* %57, align 8
  %58 = load i32, i32* @RB_LSSIWRITE_8821A, align 4
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @RF90_PATH_B, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %58, i32* %64, align 8
  %65 = load i8*, i8** @RHSSIREAD_8821AE, align 8
  %66 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @RF90_PATH_A, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %65, i8** %71, align 8
  %72 = load i8*, i8** @RHSSIREAD_8821AE, align 8
  %73 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @RF90_PATH_B, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %72, i8** %78, align 8
  %79 = load i32, i32* @RA_SIREAD_8821A, align 4
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @RF90_PATH_A, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* @RB_SIREAD_8821A, align 4
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @RF90_PATH_B, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* @RA_PIREAD_8821A, align 4
  %94 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %95 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* @RF90_PATH_A, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 8
  %100 = load i32, i32* @RB_PIREAD_8821A, align 4
  %101 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %102 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @RF90_PATH_B, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
