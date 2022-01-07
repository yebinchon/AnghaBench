; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92se_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92se_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, %struct.rtl_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_phy = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@INIRTSMCS_SEL = common dso_local global i32 0, align 4
@BW_OPMODE = common dso_local global i32 0, align 4
@HW_VAR_RETRY_LIMIT = common dso_local global i32 0, align 4
@MLT = common dso_local global i32 0, align 4
@MAX_MSS_DENSITY_1T = common dso_local global i32 0, align 4
@MAX_MSS_DENSITY_2T = common dso_local global i32 0, align 4
@AMPDU_MIN_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92se_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92se_hw_configure(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_pci* @rtl_pcidev(i32 %13)
  store %struct.rtl_pci* %14, %struct.rtl_pci** %4, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 1
  store %struct.rtl_phy* %16, %struct.rtl_phy** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @RATE_ALL_CCK, align 4
  %22 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @INIRTSMCS_SEL, align 4
  %26 = call i32 @rtl_read_byte(%struct.rtl_priv* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 1048575
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @INIRTSMCS_SEL, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rtl_write_dword(%struct.rtl_priv* %32, i32 %33, i32 %34)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @BW_OPMODE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %45, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = load i32, i32* @HW_VAR_RETRY_LIMIT, align 4
  %49 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %50 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %49, i32 0, i32 0
  %51 = call i32 %46(%struct.ieee80211_hw* %47, i32 %48, i32* %50)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @MLT, align 4
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %52, i32 %53, i32 143)
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %68 [
    i32 130, label %58
    i32 131, label %58
    i32 129, label %63
    i32 128, label %63
  ]

58:                                               ; preds = %1, %1
  %59 = load i32, i32* @MAX_MSS_DENSITY_1T, align 4
  %60 = shl i32 %59, 3
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %68

63:                                               ; preds = %1, %1
  %64 = load i32, i32* @MAX_MSS_DENSITY_2T, align 4
  %65 = shl i32 %64, 3
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %1, %63, %58
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = load i32, i32* @AMPDU_MIN_SPACE, align 4
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rtl_write_byte(%struct.rtl_priv* %69, i32 %70, i32 %73)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
