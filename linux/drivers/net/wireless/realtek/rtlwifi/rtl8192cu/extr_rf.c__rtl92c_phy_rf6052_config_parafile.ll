; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c__rtl92c_phy_rf6052_config_parafile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c__rtl92c_phy_rf6052_config_parafile.c"
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
@.str.1 = private unnamed_addr constant [6 x i8] c"<---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92c_phy_rf6052_config_parafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92c_phy_rf6052_config_parafile(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bb_reg_def*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %108, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %111

19:                                               ; preds = %13
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 1
  %22 = load %struct.bb_reg_def*, %struct.bb_reg_def** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %22, i64 %23
  store %struct.bb_reg_def* %24, %struct.bb_reg_def** %8, align 8
  %25 = load i64, i64* %6, align 8
  switch i64 %25, label %41 [
    i64 131, label %26
    i64 129, label %26
    i64 130, label %33
    i64 128, label %33
  ]

26:                                               ; preds = %19, %19
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %29 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BRFSI_RFENV, align 4
  %32 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %27, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %19, %19
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %36 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BRFSI_RFENV, align 4
  %39 = shl i32 %38, 16
  %40 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %34, i32 %37, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %19, %33, %26
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %44 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BRFSI_RFENV, align 4
  %47 = shl i32 %46, 16
  %48 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %45, i32 %47, i32 1)
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %52 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BRFSI_RFENV, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %50, i32 %53, i32 %54, i32 1)
  %56 = call i32 @udelay(i32 1)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %59 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @B3WIREADDREAALENGTH, align 4
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 %60, i32 %61, i32 0)
  %63 = call i32 @udelay(i32 1)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %66 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B3WIREDATALENGTH, align 4
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 %67, i32 %68, i32 0)
  %70 = call i32 @udelay(i32 1)
  %71 = load i64, i64* %6, align 8
  switch i64 %71, label %79 [
    i64 131, label %72
    i64 130, label %72
    i64 129, label %77
    i64 128, label %78
  ]

72:                                               ; preds = %41, %41
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load i64, i64* %6, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @rtl92cu_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %73, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %41
  br label %79

78:                                               ; preds = %41
  br label %79

79:                                               ; preds = %41, %78, %77, %72
  %80 = load i64, i64* %6, align 8
  switch i64 %80, label %98 [
    i64 131, label %81
    i64 129, label %81
    i64 130, label %89
    i64 128, label %89
  ]

81:                                               ; preds = %79, %79
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %84 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BRFSI_RFENV, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %82, i32 %85, i32 %86, i32 %87)
  br label %98

89:                                               ; preds = %79, %79
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %91 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %92 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BRFSI_RFENV, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %93, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %79, %89, %81
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = load i32, i32* @COMP_INIT, align 4
  %104 = load i32, i32* @DBG_TRACE, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %105)
  br label %116

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %13

111:                                              ; preds = %13
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = load i32, i32* @COMP_INIT, align 4
  %114 = load i32, i32* @DBG_TRACE, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %101
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl92cu_phy_config_rf_with_headerfile(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
