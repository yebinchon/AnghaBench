; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_tra_tdma_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_fw_tra_tdma_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[BTCoex], not 8723B cut, don't set Traditional TDMA!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[BTCoex], turn TTDMA mode ON!!\0A\00", align 1
@TDMA_1ANT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"[BTCoex], TTDMA_1ANT\0A\00", align 1
@TDMA_2ANT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"[BTCoex], TTDMA_2ANT\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"[BTCoex], Unknown Ant\0A\00", align 1
@TDMA_NAV_OFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"[BTCoex], TTDMA_NAV_OFF\0A\00", align 1
@TDMA_NAV_ON = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"[BTCoex], TTDMA_NAV_ON\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"[BTCoex], turn TTDMA mode OFF!!\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"[BTCoex], FW Traditional TDMA, write 0x33=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64, i64)* @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca [2 x i64], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %10, align 8
  %17 = bitcast [2 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %19 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_VENDOR_8723_A_CUT(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %25 = load i32, i32* @COMP_BT_COEXIST, align 4
  %26 = load i32, i32* @DBG_TRACE, align 4
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %113

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %28
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %33 = load i32, i32* @COMP_BT_COEXIST, align 4
  %34 = load i32, i32* @DBG_TRACE, align 4
  %35 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i64 @BIT(i32 0)
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %38 = load i64, i64* %37, align 16
  %39 = or i64 %38, %36
  store i64 %39, i64* %37, align 16
  %40 = load i64, i64* @TDMA_1ANT, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %45 = load i32, i32* @COMP_BT_COEXIST, align 4
  %46 = load i32, i32* @DBG_TRACE, align 4
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i64 @BIT(i32 1)
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 16
  br label %67

52:                                               ; preds = %31
  %53 = load i64, i64* @TDMA_2ANT, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %58 = load i32, i32* @COMP_BT_COEXIST, align 4
  %59 = load i32, i32* @DBG_TRACE, align 4
  %60 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %66

61:                                               ; preds = %52
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %63 = load i32, i32* @COMP_BT_COEXIST, align 4
  %64 = load i32, i32* @DBG_TRACE, align 4
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i64, i64* @TDMA_NAV_OFF, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %73 = load i32, i32* @COMP_BT_COEXIST, align 4
  %74 = load i32, i32* @DBG_TRACE, align 4
  %75 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %90

76:                                               ; preds = %67
  %77 = load i64, i64* @TDMA_NAV_ON, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %82 = load i32, i32* @COMP_BT_COEXIST, align 4
  %83 = load i32, i32* @DBG_TRACE, align 4
  %84 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i64 @BIT(i32 0)
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %85
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %80, %76
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %99

94:                                               ; preds = %28
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %96 = load i32, i32* @COMP_BT_COEXIST, align 4
  %97 = load i32, i32* @DBG_TRACE, align 4
  %98 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %90
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %101 = load i32, i32* @COMP_BT_COEXIST, align 4
  %102 = load i32, i32* @DBG_TRACE, align 4
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %104 = load i64, i64* %103, align 16
  %105 = shl i64 %104, 8
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %105, %107
  %109 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %108)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %112 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %110, i32 51, i32 2, i64* %111)
  br label %113

113:                                              ; preds = %99, %23
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @IS_VENDOR_8723_A_CUT(i32) #1

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
