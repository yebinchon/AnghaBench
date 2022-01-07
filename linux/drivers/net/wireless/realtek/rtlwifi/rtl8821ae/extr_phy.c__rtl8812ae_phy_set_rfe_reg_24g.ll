; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_rfe_reg_24g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_rfe_reg_24g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32 }

@RA_RFE_PINMUX = common dso_local global i32 0, align 4
@BMASKDWORD = common dso_local global i32 0, align 4
@RB_RFE_PINMUX = common dso_local global i32 0, align 4
@RA_RFE_INV = common dso_local global i32 0, align 4
@BMASKRFEINV = common dso_local global i32 0, align 4
@RB_RFE_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8812ae_phy_set_rfe_reg_24g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_phy_set_rfe_reg_24g(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %96 [
    i32 3, label %14
    i32 4, label %33
    i32 5, label %50
    i32 1, label %73
    i32 0, label %95
    i32 2, label %95
  ]

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = load i32, i32* @RA_RFE_PINMUX, align 4
  %17 = load i32, i32* @BMASKDWORD, align 4
  %18 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 %16, i32 %17, i32 1412659056)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @RB_RFE_PINMUX, align 4
  %21 = load i32, i32* @BMASKDWORD, align 4
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21, i32 1412659056)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* @RA_RFE_INV, align 4
  %25 = load i32, i32* @BMASKRFEINV, align 4
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 %24, i32 %25, i32 16)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @RB_RFE_INV, align 4
  %29 = load i32, i32* @BMASKRFEINV, align 4
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 16)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %31, i32 2304, i32 771, i32 1)
  br label %113

33:                                               ; preds = %1
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = load i32, i32* @RA_RFE_PINMUX, align 4
  %36 = load i32, i32* @BMASKDWORD, align 4
  %37 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 %35, i32 %36, i32 2004318071)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load i32, i32* @RB_RFE_PINMUX, align 4
  %40 = load i32, i32* @BMASKDWORD, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 %40, i32 2004318071)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load i32, i32* @RA_RFE_INV, align 4
  %44 = load i32, i32* @BMASKRFEINV, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = load i32, i32* @RB_RFE_INV, align 4
  %48 = load i32, i32* @BMASKRFEINV, align 4
  %49 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 %47, i32 %48, i32 1)
  br label %113

50:                                               ; preds = %1
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* @RA_RFE_PINMUX, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %51, i32 %53, i32 119)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %56 = load i32, i32* @RB_RFE_PINMUX, align 4
  %57 = load i32, i32* @BMASKDWORD, align 4
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %55, i32 %56, i32 %57, i32 2004318071)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i32, i32* @RA_RFE_INV, align 4
  %61 = add nsw i32 %60, 3
  %62 = call i32 @rtl_read_byte(%struct.rtl_priv* %59, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @RA_RFE_INV, align 4
  %65 = add nsw i32 %64, 3
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, -2
  %68 = call i32 @rtl_write_byte(%struct.rtl_priv* %63, i32 %65, i32 %67)
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = load i32, i32* @RB_RFE_INV, align 4
  %71 = load i32, i32* @BMASKRFEINV, align 4
  %72 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %69, i32 %70, i32 %71, i32 0)
  br label %113

73:                                               ; preds = %1
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i32, i32* @RA_RFE_PINMUX, align 4
  %82 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %80, i32 %81, i32 16777215, i32 7829367)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = load i32, i32* @RB_RFE_PINMUX, align 4
  %85 = load i32, i32* @BMASKDWORD, align 4
  %86 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %83, i32 %84, i32 %85, i32 2004318071)
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = load i32, i32* @RA_RFE_INV, align 4
  %89 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %87, i32 %88, i32 871366656, i32 0)
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %91 = load i32, i32* @RB_RFE_INV, align 4
  %92 = load i32, i32* @BMASKRFEINV, align 4
  %93 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i32 0)
  br label %113

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %1, %1, %94
  br label %96

96:                                               ; preds = %1, %95
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %98 = load i32, i32* @RA_RFE_PINMUX, align 4
  %99 = load i32, i32* @BMASKDWORD, align 4
  %100 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %97, i32 %98, i32 %99, i32 2004318071)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = load i32, i32* @RB_RFE_PINMUX, align 4
  %103 = load i32, i32* @BMASKDWORD, align 4
  %104 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %101, i32 %102, i32 %103, i32 2004318071)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @RA_RFE_INV, align 4
  %107 = load i32, i32* @BMASKRFEINV, align 4
  %108 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107, i32 0)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = load i32, i32* @RB_RFE_INV, align 4
  %111 = load i32, i32* @BMASKRFEINV, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %109, i32 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %96, %79, %50, %33, %14
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
