; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_wmac_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_wmac_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }

@RCR_APM = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_PHYSTS = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@HW_VAR_RCR = common dso_local global i32 0, align 4
@REG_MAR = common dso_local global i64 0, align 8
@HW_VAR_MGT_FILTER = common dso_local global i32 0, align 4
@HW_VAR_CTRL_FILTER = common dso_local global i32 0, align 4
@HW_VAR_DATA_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_init_wmac_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_init_wmac_setting(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load i32, i32* @RCR_APM, align 4
  %9 = load i32, i32* @RCR_AM, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @RCR_ADF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RCR_AB, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RCR_APPFCS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RCR_APP_ICV, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RCR_AMF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RCR_APP_MIC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RCR_APP_PHYSTS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RCR_ACRC32, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %34, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = load i32, i32* @HW_VAR_RCR, align 4
  %38 = call i32 %35(%struct.ieee80211_hw* %36, i32 %37, i32* %4)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = load i64, i64* @REG_MAR, align 8
  %41 = call i32 @rtl_write_dword(%struct.rtl_priv* %39, i64 %40, i32 -1)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = load i64, i64* @REG_MAR, align 8
  %44 = add nsw i64 %43, 4
  %45 = call i32 @rtl_write_dword(%struct.rtl_priv* %42, i64 %44, i32 -1)
  store i32 65535, i32* %3, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %51, align 8
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = load i32, i32* @HW_VAR_MGT_FILTER, align 4
  %55 = call i32 %52(%struct.ieee80211_hw* %53, i32 %54, i32* %3)
  store i32 0, i32* %3, align 4
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %61, align 8
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = load i32, i32* @HW_VAR_CTRL_FILTER, align 4
  %65 = call i32 %62(%struct.ieee80211_hw* %63, i32 %64, i32* %3)
  store i32 65535, i32* %3, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %71, align 8
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load i32, i32* @HW_VAR_DATA_FILTER, align 4
  %75 = call i32 %72(%struct.ieee80211_hw* %73, i32 %74, i32* %3)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
