; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_set_rfpath_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_set_rfpath_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_efuse = type { i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REG_LEDCFG0 = common dso_local global i32 0, align 4
@RFPGA0_XAB_RFPARAMETER = common dso_local global i32 0, align 4
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i32 0, align 4
@RFPGA0_XAB_RFINTERFACESW = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@RCONFIG_RAM64x16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl92ee_phy_set_rfpath_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_phy_set_rfpath_switch(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_efuse*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %9, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %24 = call i64 @is_hal_stop(%struct.rtl_hal* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %28 = load i32, i32* @REG_LEDCFG0, align 4
  %29 = call i32 @rtl_read_byte(%struct.rtl_priv* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %31 = load i32, i32* @REG_LEDCFG0, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @BIT(i32 7)
  %34 = or i32 %32, %33
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i32 %31, i32 %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %38 = call i32 @BIT(i32 13)
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %26, %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %49 = call i32 @BIT(i32 5)
  %50 = call i32 @BIT(i32 6)
  %51 = or i32 %49, %50
  %52 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %47, i32 %48, i32 %51, i32 1)
  br label %60

53:                                               ; preds = %43
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %56 = call i32 @BIT(i32 5)
  %57 = call i32 @BIT(i32 6)
  %58 = or i32 %56, %57
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %58, i32 2)
  br label %60

60:                                               ; preds = %53, %46
  br label %130

61:                                               ; preds = %40
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %63 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %64 = call i32 @BIT(i32 8)
  %65 = call i32 @BIT(i32 9)
  %66 = or i32 %64, %65
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %62, i32 %63, i32 %66, i32 0)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %69 = load i32, i32* @MASKLWORD, align 4
  %70 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 2324, i32 %69, i32 513)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %61
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %76 = call i32 @BIT(i32 14)
  %77 = call i32 @BIT(i32 13)
  %78 = or i32 %76, %77
  %79 = call i32 @BIT(i32 12)
  %80 = or i32 %78, %79
  %81 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %74, i32 %75, i32 %80, i32 0)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %83 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %84 = call i32 @BIT(i32 5)
  %85 = call i32 @BIT(i32 4)
  %86 = or i32 %84, %85
  %87 = call i32 @BIT(i32 3)
  %88 = or i32 %86, %87
  %89 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %82, i32 %83, i32 %88, i32 0)
  %90 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %91 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = load i32, i32* @RCONFIG_RAM64x16, align 4
  %98 = call i32 @BIT(i32 31)
  %99 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %95, %73
  br label %129

101:                                              ; preds = %61
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %103 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %104 = call i32 @BIT(i32 14)
  %105 = call i32 @BIT(i32 13)
  %106 = or i32 %104, %105
  %107 = call i32 @BIT(i32 12)
  %108 = or i32 %106, %107
  %109 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %108, i32 1)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %111 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %112 = call i32 @BIT(i32 5)
  %113 = call i32 @BIT(i32 4)
  %114 = or i32 %112, %113
  %115 = call i32 @BIT(i32 3)
  %116 = or i32 %114, %115
  %117 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %110, i32 %111, i32 %116, i32 1)
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %101
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %125 = load i32, i32* @RCONFIG_RAM64x16, align 4
  %126 = call i32 @BIT(i32 31)
  %127 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %124, i32 %125, i32 %126, i32 1)
  br label %128

128:                                              ; preds = %123, %101
  br label %129

129:                                              ; preds = %128, %100
  br label %130

130:                                              ; preds = %129, %60
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
