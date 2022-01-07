; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c_rtl92s_phy_rf6052_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c_rtl92s_phy_rf6052_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32 }

@BRFSI_RFENV = common dso_local global i32 0, align 4
@B3WIRE_ADDRESSLENGTH = common dso_local global i32 0, align 4
@B3WIRE_DATALENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Radio[%d] Fail!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_phy_rf6052_config(%struct.ieee80211_hw* %0) #0 {
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

14:                                               ; preds = %107, %1
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %110

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
  %33 = call i32 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw* %28, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %42

34:                                               ; preds = %20, %20
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %36 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %37 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BRFSI_RFENV, align 4
  %40 = shl i32 %39, 16
  %41 = call i32 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw* %35, i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %20, %34, %27
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %45 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BRFSI_RFENV, align 4
  %48 = shl i32 %47, 16
  %49 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %43, i32 %46, i32 %48, i32 1)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %52 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BRFSI_RFENV, align 4
  %55 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %50, i32 %53, i32 %54, i32 1)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %58 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @B3WIRE_ADDRESSLENGTH, align 4
  %61 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %56, i32 %59, i32 %60, i32 0)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %64 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @B3WIRE_DATALENGTH, align 4
  %67 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %62, i32 %65, i32 %66, i32 0)
  %68 = load i64, i64* %7, align 8
  switch i64 %68, label %81 [
    i64 131, label %69
    i64 130, label %74
    i64 129, label %79
    i64 128, label %80
  ]

69:                                               ; preds = %42
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @rtl92s_phy_config_rf(%struct.ieee80211_hw* %70, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %42
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @rtl92s_phy_config_rf(%struct.ieee80211_hw* %75, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %81

79:                                               ; preds = %42
  br label %81

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %42, %80, %79, %74, %69
  %82 = load i64, i64* %7, align 8
  switch i64 %82, label %100 [
    i64 131, label %83
    i64 129, label %83
    i64 130, label %91
    i64 128, label %91
  ]

83:                                               ; preds = %81, %81
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %86 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BRFSI_RFENV, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %84, i32 %87, i32 %88, i32 %89)
  br label %100

91:                                               ; preds = %81, %81
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %93 = load %struct.bb_reg_def*, %struct.bb_reg_def** %9, align 8
  %94 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BRFSI_RFENV, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw* %92, i32 %95, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %81, %91, %83
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %104)
  br label %112

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %14

110:                                              ; preds = %14
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92s_phy_set_bb_reg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92s_phy_config_rf(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
