; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_run_sw_coex_mech.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_run_sw_coex_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[BTCoex], Action algorithm = SCO\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[BTCoex], Action algorithm = HID\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[BTCoex], Action algorithm = A2DP\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[BTCoex], Action algorithm = A2DP+PAN(HS)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"[BTCoex], Action algorithm = PAN(EDR)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"[BTCoex], Action algorithm = HS mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"[BTCoex], Action algorithm = PAN+A2DP\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"[BTCoex], Action algorithm = PAN(EDR)+HID\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"[BTCoex], Action algorithm = HID+A2DP+PAN\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"[BTCoex], Action algorithm = HID+A2DP\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"[BTCoex], Action algorithm = coexist All Off!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_run_sw_coex_mech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_run_sw_coex_mech(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 0
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = call i32 @btc8821a1ant_action_algorithm(%struct.btc_coexist* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = call i32 @btc8821a1ant_is_common_action(%struct.btc_coexist* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %101, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %90 [
    i32 128, label %20
    i32 135, label %27
    i32 137, label %34
    i32 136, label %41
    i32 132, label %48
    i32 129, label %55
    i32 131, label %62
    i32 130, label %69
    i32 133, label %76
    i32 134, label %83
  ]

20:                                               ; preds = %16
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @COMP_BT_COEXIST, align 4
  %23 = load i32, i32* @DBG_LOUD, align 4
  %24 = call i32 @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = call i32 @btc8821a1ant_action_sco(%struct.btc_coexist* %25)
  br label %95

27:                                               ; preds = %16
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = call i32 @btc8821a1ant_action_hid(%struct.btc_coexist* %32)
  br label %95

34:                                               ; preds = %16
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @COMP_BT_COEXIST, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = call i32 @btc8821a1ant_action_a2dp(%struct.btc_coexist* %39)
  br label %95

41:                                               ; preds = %16
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @COMP_BT_COEXIST, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = call i32 @btc8821a1ant_action_a2dp_pan_hs(%struct.btc_coexist* %46)
  br label %95

48:                                               ; preds = %16
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = call i32 @btc8821a1ant_action_pan_edr(%struct.btc_coexist* %53)
  br label %95

55:                                               ; preds = %16
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i32, i32* @COMP_BT_COEXIST, align 4
  %58 = load i32, i32* @DBG_LOUD, align 4
  %59 = call i32 @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = call i32 @btc8821a1ant_action_pan_hs(%struct.btc_coexist* %60)
  br label %95

62:                                               ; preds = %16
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @COMP_BT_COEXIST, align 4
  %65 = load i32, i32* @DBG_LOUD, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = call i32 @btc8821a1ant_action_pan_edr_a2dp(%struct.btc_coexist* %67)
  br label %95

69:                                               ; preds = %16
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @COMP_BT_COEXIST, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = call i32 @btc8821a1ant_action_pan_edr_hid(%struct.btc_coexist* %74)
  br label %95

76:                                               ; preds = %16
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @COMP_BT_COEXIST, align 4
  %79 = load i32, i32* @DBG_LOUD, align 4
  %80 = call i32 @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %82 = call i32 @btc8821a1ant_action_hid_a2dp_pan_edr(%struct.btc_coexist* %81)
  br label %95

83:                                               ; preds = %16
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = load i32, i32* @COMP_BT_COEXIST, align 4
  %86 = load i32, i32* @DBG_LOUD, align 4
  %87 = call i32 @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %89 = call i32 @btc8821a1ant_action_hid_a2dp(%struct.btc_coexist* %88)
  br label %95

90:                                               ; preds = %16
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = load i32, i32* @COMP_BT_COEXIST, align 4
  %93 = load i32, i32* @DBG_LOUD, align 4
  %94 = call i32 @RT_TRACE(%struct.rtl_priv* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %83, %76, %69, %62, %55, %48, %41, %34, %27, %20
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %1
  ret void
}

declare dso_local i32 @btc8821a1ant_action_algorithm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_is_common_action(%struct.btc_coexist*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_action_sco(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_a2dp_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_pan_edr_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_pan_edr_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hid_a2dp_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hid_a2dp(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
