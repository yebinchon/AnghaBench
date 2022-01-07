; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_rf_serial_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_rf_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32 }

@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@BLSSIREADADDRESS = common dso_local global i32 0, align 4
@BLSSIREADEDGE = common dso_local global i32 0, align 4
@RFPGA0_XA_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@RFPGA0_XB_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@BLSSIREADBACKDATA = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RFR-%d Addr[0x%x] = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl92d_phy_rf_serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_phy_rf_serial_read(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca %struct.bb_reg_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %8, align 8
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %20 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %19, i32 0, i32 0
  %21 = load %struct.bb_reg_def*, %struct.bb_reg_def** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %21, i64 %23
  store %struct.bb_reg_def* %24, %struct.bb_reg_def** %9, align 8
  store i64 0, i64* %13, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %28 = load i32, i32* @MASKDWORD, align 4
  %29 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RF90_PATH_A, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %12, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %38 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %36, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %35, %33
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @BLSSIREADADDRESS, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 23
  %49 = or i32 %46, %48
  %50 = load i32, i32* @BLSSIREADEDGE, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %54 = load i32, i32* @MASKDWORD, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @BLSSIREADEDGE, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %54, i32 %58)
  %60 = call i32 @udelay(i32 10)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %63 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MASKDWORD, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %61, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @udelay(i32 50)
  %69 = call i32 @udelay(i32 50)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %71 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %72 = load i32, i32* @MASKDWORD, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @BLSSIREADEDGE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %70, i32 %71, i32 %72, i32 %75)
  %77 = call i32 @udelay(i32 10)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RF90_PATH_A, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %42
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %83 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER1, align 4
  %84 = call i32 @BIT(i32 8)
  %85 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %82, i32 %83, i32 %84)
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %13, align 8
  br label %98

87:                                               ; preds = %42
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @RF90_PATH_B, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %93 = load i32, i32* @RFPGA0_XB_HSSIPARAMETER1, align 4
  %94 = call i32 @BIT(i32 8)
  %95 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %92, i32 %93, i32 %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %81
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %103 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %104 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BLSSIREADBACKDATA, align 4
  %107 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %102, i32 %105, i32 %106)
  store i32 %107, i32* %14, align 4
  br label %115

108:                                              ; preds = %98
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %110 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %111 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BLSSIREADBACKDATA, align 4
  %114 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %109, i32 %112, i32 %113)
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %117 = load i32, i32* @COMP_RF, align 4
  %118 = load i32, i32* @DBG_TRACE, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %121 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @RT_TRACE(%struct.rtl_priv* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122, i32 %123)
  %125 = load i32, i32* %14, align 4
  ret i32 %125
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
