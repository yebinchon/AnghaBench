; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_rfe_reg_5g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_rfe_reg_5g.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8812ae_phy_set_rfe_reg_5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_phy_set_rfe_reg_5g(%struct.ieee80211_hw* %0) #0 {
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
  switch i32 %13, label %113 [
    i32 0, label %14
    i32 1, label %31
    i32 3, label %70
    i32 5, label %89
    i32 2, label %112
    i32 4, label %112
  ]

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = load i32, i32* @RA_RFE_PINMUX, align 4
  %17 = load i32, i32* @BMASKDWORD, align 4
  %18 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 %16, i32 %17, i32 1999861527)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @RB_RFE_PINMUX, align 4
  %21 = load i32, i32* @BMASKDWORD, align 4
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21, i32 1999861527)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* @RA_RFE_INV, align 4
  %25 = load i32, i32* @BMASKRFEINV, align 4
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 %24, i32 %25, i32 16)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @RB_RFE_INV, align 4
  %29 = load i32, i32* @BMASKRFEINV, align 4
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 16)
  br label %130

31:                                               ; preds = %1
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load i32, i32* @RA_RFE_PINMUX, align 4
  %40 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 16777215, i32 3372823)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load i32, i32* @RB_RFE_PINMUX, align 4
  %43 = load i32, i32* @BMASKDWORD, align 4
  %44 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %41, i32 %42, i32 %43, i32 1999861527)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = load i32, i32* @RA_RFE_INV, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i32 %46, i32 871366656, i32 0)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i32, i32* @RB_RFE_INV, align 4
  %50 = load i32, i32* @BMASKRFEINV, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 0)
  br label %69

52:                                               ; preds = %31
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = load i32, i32* @RA_RFE_PINMUX, align 4
  %55 = load i32, i32* @BMASKDWORD, align 4
  %56 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %53, i32 %54, i32 %55, i32 1999861527)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @RB_RFE_PINMUX, align 4
  %59 = load i32, i32* @BMASKDWORD, align 4
  %60 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 %58, i32 %59, i32 1999861527)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %62 = load i32, i32* @RA_RFE_INV, align 4
  %63 = load i32, i32* @BMASKRFEINV, align 4
  %64 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = load i32, i32* @RB_RFE_INV, align 4
  %67 = load i32, i32* @BMASKRFEINV, align 4
  %68 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %65, i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %52, %37
  br label %130

70:                                               ; preds = %1
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = load i32, i32* @RA_RFE_PINMUX, align 4
  %73 = load i32, i32* @BMASKDWORD, align 4
  %74 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %71, i32 %72, i32 %73, i32 1412658967)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %76 = load i32, i32* @RB_RFE_PINMUX, align 4
  %77 = load i32, i32* @BMASKDWORD, align 4
  %78 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %75, i32 %76, i32 %77, i32 1412658967)
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = load i32, i32* @RA_RFE_INV, align 4
  %81 = load i32, i32* @BMASKRFEINV, align 4
  %82 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 %80, i32 %81, i32 16)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = load i32, i32* @RB_RFE_INV, align 4
  %85 = load i32, i32* @BMASKRFEINV, align 4
  %86 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %83, i32 %84, i32 %85, i32 16)
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %87, i32 2304, i32 771, i32 1)
  br label %130

89:                                               ; preds = %1
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = load i32, i32* @RA_RFE_PINMUX, align 4
  %92 = add nsw i32 %91, 2
  %93 = call i32 @rtl_write_byte(%struct.rtl_priv* %90, i32 %92, i32 51)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @RB_RFE_PINMUX, align 4
  %96 = load i32, i32* @BMASKDWORD, align 4
  %97 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 1999861623)
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = load i32, i32* @RA_RFE_INV, align 4
  %100 = add nsw i32 %99, 3
  %101 = call i32 @rtl_read_byte(%struct.rtl_priv* %98, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = load i32, i32* @RA_RFE_INV, align 4
  %104 = add nsw i32 %103, 3
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, 1
  %107 = call i32 @rtl_write_byte(%struct.rtl_priv* %102, i32 %104, i32 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %109 = load i32, i32* @RB_RFE_INV, align 4
  %110 = load i32, i32* @BMASKRFEINV, align 4
  %111 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i32 16)
  br label %130

112:                                              ; preds = %1, %1
  br label %113

113:                                              ; preds = %1, %112
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = load i32, i32* @RA_RFE_PINMUX, align 4
  %116 = load i32, i32* @BMASKDWORD, align 4
  %117 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i32 1999861623)
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @RB_RFE_PINMUX, align 4
  %120 = load i32, i32* @BMASKDWORD, align 4
  %121 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %118, i32 %119, i32 %120, i32 1999861623)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %123 = load i32, i32* @RA_RFE_INV, align 4
  %124 = load i32, i32* @BMASKRFEINV, align 4
  %125 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %122, i32 %123, i32 %124, i32 16)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = load i32, i32* @RB_RFE_INV, align 4
  %128 = load i32, i32* @BMASKRFEINV, align 4
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 %128, i32 16)
  br label %130

130:                                              ; preds = %113, %89, %70, %69, %14
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
