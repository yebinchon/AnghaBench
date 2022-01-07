; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_dm.c_rtl92ce_dm_dynamic_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_dm.c_rtl92ce_dm_dynamic_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.rtl_phy = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_NORMAL = common dso_local global i8* null, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL2 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_LEVEL1 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_dm_dynamic_txpower(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %185

20:                                               ; preds = %1
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  br label %185

34:                                               ; preds = %20
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAC80211_LINKED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = load i32, i32* @COMP_POWER, align 4
  %49 = load i32, i32* @DBG_TRACE, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i64 %57, i64* %60, align 8
  br label %185

61:                                               ; preds = %40, %34
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC80211_LINKED, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %69 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = load i32, i32* @COMP_POWER, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %93

83:                                               ; preds = %67
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %6, align 8
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @COMP_POWER, align 4
  %90 = load i32, i32* @DBG_LOUD, align 4
  %91 = load i64, i64* %6, align 8
  %92 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %83, %73
  br label %104

94:                                               ; preds = %61
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %6, align 8
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %100 = load i32, i32* @COMP_POWER, align 4
  %101 = load i32, i32* @DBG_LOUD, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %94, %93
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL1, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = load i32, i32* @COMP_POWER, align 4
  %116 = load i32, i32* @DBG_LOUD, align 4
  %117 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %154

118:                                              ; preds = %104
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %121 = sub nsw i64 %120, 3
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL1, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %134 = load i32, i32* @COMP_POWER, align 4
  %135 = load i32, i32* @DBG_LOUD, align 4
  %136 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %133, i32 %134, i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %153

137:                                              ; preds = %123, %118
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %140 = sub nsw i64 %139, 5
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %149 = load i32, i32* @COMP_POWER, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %142, %137
  br label %153

153:                                              ; preds = %152, %127
  br label %154

154:                                              ; preds = %153, %108
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %156 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %158, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %154
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = load i32, i32* @COMP_POWER, align 4
  %167 = load i32, i32* @DBG_LOUD, align 4
  %168 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %169 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %170)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %173 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %174 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw* %172, i64 %175)
  br label %177

177:                                              ; preds = %164, %154
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %177, %46, %28, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
