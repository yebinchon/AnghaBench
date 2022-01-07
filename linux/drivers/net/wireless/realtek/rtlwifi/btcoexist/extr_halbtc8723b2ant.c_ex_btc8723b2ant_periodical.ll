; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_periodical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_periodical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"[BTCoex], Set GNT_BT control by PTA\0A\00", align 1
@BTC_ANT_WIFI_AT_MAIN = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b2ant_periodical(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 2
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 1
  store %struct.btc_bt_link_info* %9, %struct.btc_bt_link_info** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = load i32, i32* @COMP_BT_COEXIST, align 4
  %12 = load i32, i32* @DBG_LOUD, align 4
  %13 = call i32 @RT_TRACE(%struct.rtl_priv* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* @BTC_ANT_WIFI_AT_MAIN, align 4
  %34 = call i32 @btc8723b2ant_set_ant_path(%struct.btc_coexist* %32, i32 %33, i32 0, i32 0)
  br label %35

35:                                               ; preds = %27, %18
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = call i32 @btc8723b2ant_query_bt_info(%struct.btc_coexist* %42)
  br label %78

44:                                               ; preds = %36
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = call i32 @btc8723b2ant_monitor_bt_ctr(%struct.btc_coexist* %45)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = call i32 @btc8723b2ant_monitor_wifi_ctr(%struct.btc_coexist* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = icmp slt i32 %55, 50
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %59 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %64 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57, %44
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i64 @btc8723b2ant_is_wifi_status_changed(%struct.btc_coexist* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %65
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %76 = call i32 @btc8723b2ant_run_coexist_mechanism(%struct.btc_coexist* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %41
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8723b2ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_query_bt_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_monitor_bt_ctr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_monitor_wifi_ctr(%struct.btc_coexist*) #1

declare dso_local i64 @btc8723b2ant_is_wifi_status_changed(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
