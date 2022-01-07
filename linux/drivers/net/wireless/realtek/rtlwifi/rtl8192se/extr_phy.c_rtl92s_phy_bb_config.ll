; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i64 }

@RFPGA0_TXINFO = common dso_local global i32 0, align 4
@ROFDM0_TRXPATHENABLE = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@RF_2T2R_GREEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"RF_Type(%x) does not match RF_Num(%x)!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"path1 0x%x, path2 0x%x, pathmap 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  store %struct.rtl_phy* %14, %struct.rtl_phy** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @_rtl92s_phy_init_register_definition(%struct.ieee80211_hw* %15)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @_rtl92s_phy_bb_config_parafile(%struct.ieee80211_hw* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @RFPGA0_TXINFO, align 4
  %21 = call i64 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw* %19, i32 %20, i32 15)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = call i32 @mdelay(i32 10)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %26 = call i64 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw* %24, i32 %25, i32 15)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %47, %1
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RF_1T1R, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %86, label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RF_1T2R, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %86, label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RF_2T2R, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %86, label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RF_2T2R_GREEN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 2
  br i1 %85, label %86, label %97

86:                                               ; preds = %83, %74, %65, %56
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %83, %77
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92s_phy_init_register_definition(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92s_phy_bb_config_parafile(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl92s_phy_query_bb_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
