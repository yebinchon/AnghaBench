; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_rf_serial_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_rf_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32 }

@RFPGA0_XA_HSSIPARAMETER2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@BLSSI_READADDRESS = common dso_local global i32 0, align 4
@BLSSI_READEDGE = common dso_local global i32 0, align 4
@RFPGA0_XA_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@RFPGA0_XB_HSSIPARAMETER1 = common dso_local global i32 0, align 4
@BLSSI_READBACK_DATA = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RFR-%d Addr[0x%x]=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl92s_phy_rf_serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_phy_rf_serial_read(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
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
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 63
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %30 = load i32, i32* @MASKDWORD, align 4
  %31 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RF90_PATH_A, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  br label %44

37:                                               ; preds = %3
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %40 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %38, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %37, %35
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @BLSSI_READADDRESS, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 23
  %51 = or i32 %48, %50
  %52 = load i32, i32* @BLSSI_READEDGE, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %56 = load i32, i32* @MASKDWORD, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @BLSSI_READEDGE, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 %60)
  %62 = call i32 @mdelay(i32 1)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %65 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MASKDWORD, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %63, i32 %66, i32 %67, i32 %68)
  %70 = call i32 @mdelay(i32 1)
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %73 = load i32, i32* @MASKDWORD, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @BLSSI_READEDGE, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %71, i32 %72, i32 %73, i32 %76)
  %78 = call i32 @mdelay(i32 1)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @RF90_PATH_A, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %44
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %84 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER1, align 4
  %85 = call i32 @BIT(i32 8)
  %86 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %83, i32 %84, i32 %85)
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %13, align 8
  br label %99

88:                                               ; preds = %44
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @RF90_PATH_B, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %94 = load i32, i32* @RFPGA0_XB_HSSIPARAMETER1, align 4
  %95 = call i32 @BIT(i32 8)
  %96 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 %95)
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %92, %88
  br label %99

99:                                               ; preds = %98, %82
  %100 = load i64, i64* %13, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %105 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BLSSI_READBACK_DATA, align 4
  %108 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %103, i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %116

109:                                              ; preds = %99
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %111 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %112 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BLSSI_READBACK_DATA, align 4
  %115 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %110, i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %109, %102
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %118 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %119 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @BLSSI_READBACK_DATA, align 4
  %122 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %117, i32 %120, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %124 = load i32, i32* @COMP_RF, align 4
  %125 = load i32, i32* @DBG_TRACE, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %128 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* %14, align 4
  ret i32 %132
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
