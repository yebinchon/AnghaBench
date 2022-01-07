; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_periodical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_periodical.c"
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
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_periodical(%struct.btc_coexist* %0) #0 {
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
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = call i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist* %19)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = call i32 @halbtc8723b1ant_monitor_bt_enable_disable(%struct.btc_coexist* %21)
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = call i32 @halbtc8723b1ant_monitor_bt_ctr(%struct.btc_coexist* %24)
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = call i32 @halbtc8723b1ant_monitor_wifi_ctr(%struct.btc_coexist* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = icmp slt i32 %34, 50
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %38 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %43 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36, %23
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = call i64 @btc8723b1ant_is_wifi_status_changed(%struct.btc_coexist* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %44
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = call i32 @halbtc8723b1ant_run_coexist_mechanism(%struct.btc_coexist* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %18
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_monitor_bt_enable_disable(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_monitor_bt_ctr(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_monitor_wifi_ctr(%struct.btc_coexist*) #1

declare dso_local i64 @btc8723b1ant_is_wifi_status_changed(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_run_coexist_mechanism(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
