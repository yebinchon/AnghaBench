; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_parse_bt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_parse_bt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@hal_coex_8723 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%2x]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%2x, \00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"BT info bt_info (Data)= 0x%x\0A\00", align 1
@BTINFO_B_CONNECTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"[BTC2H], BTInfo: bConnect=true\0A\00", align 1
@BT_COEX_STATE_BT_IDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"[BTC2H], BTInfo: bConnect=false\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i64)* @rtl8723e_dm_bt_parse_bt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_parse_bt_info(%struct.ieee80211_hw* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %57, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 8
  br label %33

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 8
  br label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = load i32, i32* @COMP_BT_COEXIST, align 4
  %41 = load i32, i32* @DBG_TRACE, align 4
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %56

47:                                               ; preds = %33
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %49 = load i32, i32* @COMP_BT_COEXIST, align 4
  %50 = load i32, i32* @DBG_TRACE, align 4
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %47, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %12

60:                                               ; preds = %12
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_DMESG, align 4
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 8
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @BIT(i32 2)
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 8
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @BTINFO_B_CONNECTION, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %80 = load i32, i32* @COMP_BT_COEXIST, align 4
  %81 = load i32, i32* @DBG_DMESG, align 4
  %82 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* @BT_COEX_STATE_BT_IDLE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 4
  br label %107

93:                                               ; preds = %73
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %95 = load i32, i32* @COMP_BT_COEXIST, align 4
  %96 = load i32, i32* @DBG_DMESG, align 4
  %97 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @BT_COEX_STATE_BT_IDLE, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %93, %78
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
