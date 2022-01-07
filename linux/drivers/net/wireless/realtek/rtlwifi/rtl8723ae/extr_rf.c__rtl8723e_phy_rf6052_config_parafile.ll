; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c__rtl8723e_phy_rf6052_config_parafile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c__rtl8723e_phy_rf6052_config_parafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32 }

@BRFSI_RFENV = common dso_local global i32 0, align 4
@B3WIREADDREAALENGTH = common dso_local global i32 0, align 4
@B3WIREDATALENGTH = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Radio[%d] Fail!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723e_phy_rf6052_config_parafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_rf6052_config_parafile(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bb_reg_def*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %114, %1
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %14
  %21 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %21, i32 0, i32 1
  %23 = load %struct.bb_reg_def*, %struct.bb_reg_def** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %23, i64 %24
  store %struct.bb_reg_def* %25, %struct.bb_reg_def** %9, align 8
  %26 = load i64, i64* %7, align 8
  switch i64 %26, label %42 [
    i64 131, label %27
    i64 129, label %27
    i64 130, label %34
    i64 128, label %34
  ]

27:                                               ; preds = %20, %20
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %30 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BRFSI_RFENV, align 4
  %33 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %28, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %42

34:                                               ; preds = %20, %20
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %36 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %37 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BRFSI_RFENV, align 4
  %40 = shl i32 %39, 16
  %41 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %35, i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %20, %34, %27
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %45 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BRFSI_RFENV, align 4
  %48 = shl i32 %47, 16
  %49 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 %46, i32 %48, i32 1)
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %53 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BRFSI_RFENV, align 4
  %56 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %51, i32 %54, i32 %55, i32 1)
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %60 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @B3WIREADDREAALENGTH, align 4
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %58, i32 %61, i32 %62, i32 0)
  %64 = call i32 @udelay(i32 1)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %67 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @B3WIREDATALENGTH, align 4
  %70 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %65, i32 %68, i32 %69, i32 0)
  %71 = call i32 @udelay(i32 1)
  %72 = load i64, i64* %7, align 8
  switch i64 %72, label %85 [
    i64 131, label %73
    i64 130, label %78
    i64 129, label %83
    i64 128, label %84
  ]

73:                                               ; preds = %42
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @rtl8723e_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %74, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %85

78:                                               ; preds = %42
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @rtl8723e_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %79, i32 %81)
  store i32 %82, i32* %8, align 4
  br label %85

83:                                               ; preds = %42
  br label %85

84:                                               ; preds = %42
  br label %85

85:                                               ; preds = %42, %84, %83, %78, %73
  %86 = load i64, i64* %7, align 8
  switch i64 %86, label %104 [
    i64 131, label %87
    i64 129, label %87
    i64 130, label %95
    i64 128, label %95
  ]

87:                                               ; preds = %85, %85
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %90 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BRFSI_RFENV, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %88, i32 %91, i32 %92, i32 %93)
  br label %104

95:                                               ; preds = %85, %85
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %97 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %98 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BRFSI_RFENV, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %99, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %85, %95, %87
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %109 = load i32, i32* @COMP_INIT, align 4
  %110 = load i32, i32* @DBG_TRACE, align 4
  %111 = load i64, i64* %7, align 8
  %112 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %111)
  store i32 0, i32* %2, align 4
  br label %123

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %14

117:                                              ; preds = %14
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %119 = load i32, i32* @COMP_INIT, align 4
  %120 = load i32, i32* @DBG_TRACE, align 4
  %121 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %107
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8723e_phy_config_rf_with_headerfile(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
