; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_get_delta_swing_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_get_delta_swing_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_dm = type { i32 }

@rtl8812ae_delta_swing_table_idx_24gccka_p = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24gccka_n = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24gcckb_p = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24gcckb_n = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24ga_p = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24ga_n = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24gb_p = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_24gb_n = common dso_local global i32* null, align 8
@rtl8812ae_delta_swing_table_idx_5ga_p = common dso_local global i32** null, align 8
@rtl8812ae_delta_swing_table_idx_5ga_n = common dso_local global i32** null, align 8
@rtl8812ae_delta_swing_table_idx_5gb_p = common dso_local global i32** null, align 8
@rtl8812ae_delta_swing_table_idx_5gb_n = common dso_local global i32** null, align 8
@rtl8818e_delta_swing_table_idx_24gb_p = common dso_local global i64 0, align 8
@rtl8818e_delta_swing_table_idx_24gb_n = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32**, i32**, i32**, i32**)* @rtl8812ae_get_delta_swing_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8812ae_get_delta_swing_table(%struct.ieee80211_hw* %0, i32** %1, i32** %2, i32** %3, i32** %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca %struct.rtl_dm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_phy* %19, %struct.rtl_phy** %12, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %21)
  store %struct.rtl_dm* %22, %struct.rtl_dm** %13, align 8
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.rtl_dm*, %struct.rtl_dm** %13, align 8
  %27 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sle i32 1, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 14
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @RTL8821AE_RX_HAL_IS_CCK_RATE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gccka_p, align 8
  %40 = load i32**, i32*** %7, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gccka_n, align 8
  %42 = load i32**, i32*** %8, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gcckb_p, align 8
  %44 = load i32**, i32*** %9, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gcckb_n, align 8
  %46 = load i32**, i32*** %10, align 8
  store i32* %45, i32** %46, align 8
  br label %56

47:                                               ; preds = %34
  %48 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24ga_p, align 8
  %49 = load i32**, i32*** %7, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24ga_n, align 8
  %51 = load i32**, i32*** %8, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gb_p, align 8
  %53 = load i32**, i32*** %9, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** @rtl8812ae_delta_swing_table_idx_24gb_n, align 8
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  br label %56

56:                                               ; preds = %47, %38
  br label %142

57:                                               ; preds = %31, %5
  %58 = load i32, i32* %14, align 4
  %59 = icmp sle i32 36, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = icmp sle i32 %61, 64
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_p, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %7, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_n, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %8, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_p, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32**, i32*** %9, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_n, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32**, i32*** %10, align 8
  store i32* %78, i32** %79, align 8
  br label %141

80:                                               ; preds = %60, %57
  %81 = load i32, i32* %14, align 4
  %82 = icmp sle i32 100, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp sle i32 %84, 140
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_p, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32**, i32*** %7, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_n, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32**, i32*** %8, align 8
  store i32* %93, i32** %94, align 8
  %95 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_p, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32**, i32*** %9, align 8
  store i32* %97, i32** %98, align 8
  %99 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_n, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32**, i32*** %10, align 8
  store i32* %101, i32** %102, align 8
  br label %140

103:                                              ; preds = %83, %80
  %104 = load i32, i32* %14, align 4
  %105 = icmp sle i32 149, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %107, 173
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_p, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32**, i32*** %7, align 8
  store i32* %112, i32** %113, align 8
  %114 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5ga_n, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32**, i32*** %8, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_p, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32**, i32*** %9, align 8
  store i32* %120, i32** %121, align 8
  %122 = load i32**, i32*** @rtl8812ae_delta_swing_table_idx_5gb_n, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32**, i32*** %10, align 8
  store i32* %124, i32** %125, align 8
  br label %139

126:                                              ; preds = %106, %103
  %127 = load i64, i64* @rtl8818e_delta_swing_table_idx_24gb_p, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32**, i32*** %7, align 8
  store i32* %128, i32** %129, align 8
  %130 = load i64, i64* @rtl8818e_delta_swing_table_idx_24gb_n, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32**, i32*** %8, align 8
  store i32* %131, i32** %132, align 8
  %133 = load i64, i64* @rtl8818e_delta_swing_table_idx_24gb_p, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = load i32**, i32*** %9, align 8
  store i32* %134, i32** %135, align 8
  %136 = load i64, i64* @rtl8818e_delta_swing_table_idx_24gb_n, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32**, i32*** %10, align 8
  store i32* %137, i32** %138, align 8
  br label %139

139:                                              ; preds = %126, %109
  br label %140

140:                                              ; preds = %139, %86
  br label %141

141:                                              ; preds = %140, %63
  br label %142

142:                                              ; preds = %141, %56
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i64 @RTL8821AE_RX_HAL_IS_CCK_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
