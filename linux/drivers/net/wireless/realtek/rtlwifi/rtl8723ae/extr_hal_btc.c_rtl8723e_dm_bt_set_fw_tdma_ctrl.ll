; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_tdma_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_tdma_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"[BTCoex], set BT PTA update manager to trigger update!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[BTCoex], turn TDMA mode ON!!\0A\00", align 1
@TDMA_1ANT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"[BTCoex], TDMA_1ANT\0A\00", align 1
@TDMA_2ANT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"[BTCoex], TDMA_2ANT\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"[BTCoex], Unknown Ant\0A\00", align 1
@TDMA_NAV_OFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"[BTCoex], TDMA_NAV_OFF\0A\00", align 1
@TDMA_NAV_ON = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"[BTCoex], TDMA_NAV_ON\0A\00", align 1
@TDMA_DAC_SWING_OFF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"[BTCoex], TDMA_DAC_SWING_OFF\0A\00", align 1
@TDMA_DAC_SWING_ON = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"[BTCoex], TDMA_DAC_SWING_ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"[BTCoex], set BT PTA update manager to no update!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"[BTCoex], turn TDMA mode OFF!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"[BTCoex], FW2AntTDMA, write 0x26=0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"[BTCoex], FW2AntTDMA, write 0x14=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64, i64, i64)* @rtl8723e_dm_bt_set_fw_tdma_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca [1 x i64], align 8
  %13 = alloca [1 x i64], align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %11, align 8
  %16 = bitcast [1 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = bitcast [1 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %5
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %24 = load i32, i32* @COMP_BT_COEXIST, align 4
  %25 = load i32, i32* @DBG_TRACE, align 4
  %26 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %27 = call i64 @BIT(i32 0)
  %28 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %32 = load i32, i32* @COMP_BT_COEXIST, align 4
  %33 = load i32, i32* @DBG_TRACE, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i64 @BIT(i32 0)
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %35
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @TDMA_1ANT, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %44 = load i32, i32* @COMP_BT_COEXIST, align 4
  %45 = load i32, i32* @DBG_TRACE, align 4
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i64 @BIT(i32 1)
  %48 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %66

51:                                               ; preds = %22
  %52 = load i64, i64* @TDMA_2ANT, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %57 = load i32, i32* @COMP_BT_COEXIST, align 4
  %58 = load i32, i32* @DBG_TRACE, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_TRACE, align 4
  %64 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i64, i64* @TDMA_NAV_OFF, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %72 = load i32, i32* @COMP_BT_COEXIST, align 4
  %73 = load i32, i32* @DBG_TRACE, align 4
  %74 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %89

75:                                               ; preds = %66
  %76 = load i64, i64* @TDMA_NAV_ON, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %81 = load i32, i32* @COMP_BT_COEXIST, align 4
  %82 = load i32, i32* @DBG_TRACE, align 4
  %83 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i64 @BIT(i32 2)
  %85 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %86, %84
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %79, %75
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i64, i64* @TDMA_DAC_SWING_OFF, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %95 = load i32, i32* @COMP_BT_COEXIST, align 4
  %96 = load i32, i32* @DBG_TRACE, align 4
  %97 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %112

98:                                               ; preds = %89
  %99 = load i64, i64* @TDMA_DAC_SWING_ON, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %104 = load i32, i32* @COMP_BT_COEXIST, align 4
  %105 = load i32, i32* @DBG_TRACE, align 4
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %107 = call i64 @BIT(i32 4)
  %108 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %107
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %102, %98
  br label %112

112:                                              ; preds = %111, %93
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %114 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  br label %125

116:                                              ; preds = %5
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %118 = load i32, i32* @COMP_BT_COEXIST, align 4
  %119 = load i32, i32* @DBG_TRACE, align 4
  %120 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %122 = load i32, i32* @COMP_BT_COEXIST, align 4
  %123 = load i32, i32* @DBG_TRACE, align 4
  %124 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %125

125:                                              ; preds = %116, %112
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %127 = load i32, i32* @COMP_BT_COEXIST, align 4
  %128 = load i32, i32* @DBG_TRACE, align 4
  %129 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i64 %130)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %133 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %134 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %132, i32 38, i32 1, i64* %133)
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %136 = load i32, i32* @COMP_BT_COEXIST, align 4
  %137 = load i32, i32* @DBG_TRACE, align 4
  %138 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 %139)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %142 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %143 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %141, i32 20, i32 1, i64* %142)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
