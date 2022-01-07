; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_rf_serial_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_rf_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"return all one\0A\00", align 1
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
@.str.1 = private unnamed_addr constant [24 x i8] c"RFR-%d Addr[0x%x]=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_phy*, align 8
  %10 = alloca %struct.bb_reg_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %8, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_phy* %19, %struct.rtl_phy** %9, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %9, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 0
  %22 = load %struct.bb_reg_def*, %struct.bb_reg_def** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %22, i64 %24
  store %struct.bb_reg_def* %25, %struct.bb_reg_def** %10, align 8
  store i64 0, i64* %14, align 8
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 63
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %30 = call i64 @RT_CANNOT_IO(%struct.ieee80211_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %134

34:                                               ; preds = %3
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %36 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %37 = load i32, i32* @MASKDWORD, align 4
  %38 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RF90_PATH_A, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %13, align 4
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %46 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %47 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MASKDWORD, align 4
  %50 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %45, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %44, %42
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @BLSSIREADADDRESS, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 23
  %58 = or i32 %55, %57
  %59 = load i32, i32* @BLSSIREADEDGE, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %62 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %63 = load i32, i32* @MASKDWORD, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @BLSSIREADEDGE, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %61, i32 %62, i32 %63, i32 %67)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %71 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %72 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MASKDWORD, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %70, i32 %73, i32 %74, i32 %75)
  %77 = call i32 @mdelay(i32 1)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %79 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER2, align 4
  %80 = load i32, i32* @MASKDWORD, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @BLSSIREADEDGE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %78, i32 %79, i32 %80, i32 %83)
  %85 = call i32 @mdelay(i32 1)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @RF90_PATH_A, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %51
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = load i32, i32* @RFPGA0_XA_HSSIPARAMETER1, align 4
  %92 = call i32 @BIT(i32 8)
  %93 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92)
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %14, align 8
  br label %106

95:                                               ; preds = %51
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @RF90_PATH_B, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %101 = load i32, i32* @RFPGA0_XB_HSSIPARAMETER1, align 4
  %102 = call i32 @BIT(i32 8)
  %103 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %100, i32 %101, i32 %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %99, %95
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %111 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %112 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BLSSIREADBACKDATA, align 4
  %115 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %110, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  br label %123

116:                                              ; preds = %106
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %118 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %119 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @BLSSIREADBACKDATA, align 4
  %122 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %117, i32 %120, i32 %121)
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %125 = load i32, i32* @COMP_RF, align 4
  %126 = load i32, i32* @DBG_TRACE, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %129 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @RT_TRACE(%struct.rtl_priv* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130, i32 %131)
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %123, %32
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

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
