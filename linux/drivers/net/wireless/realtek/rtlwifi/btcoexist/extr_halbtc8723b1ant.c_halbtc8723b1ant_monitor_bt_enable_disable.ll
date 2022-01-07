; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_monitor_bt_enable_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_monitor_bt_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt = internal global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], BT is from %s to %s!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@BTC_SET_BL_BT_DISABLE = common dso_local global i32 0, align 4
@BTC_SET_ACT_LEAVE_LPS = common dso_local global i32 0, align 4
@BTC_SET_ACT_NORMAL_LPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_monitor_bt_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_monitor_bt_enable_disable(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 1
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %23, %18, %13, %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %44, %39, %34, %29
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  store i32 0, i32* %5, align 4
  br label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  %57 = load i32, i32* @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %53
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %61
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* @COMP_BT_COEXIST, align 4
  %70 = load i32, i32* @DBG_LOUD, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %76, i8* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %85, i32 0, i32 0
  %87 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %86, align 8
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %89 = load i32, i32* @BTC_SET_BL_BT_DISABLE, align 4
  %90 = call i32 %87(%struct.btc_coexist* %88, i32 %89, i32* %5)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %67
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = call i32 @halbtc8723b1ant_action_wifi_only(%struct.btc_coexist* %94)
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %97 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %96, i32 0, i32 0
  %98 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %97, align 8
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %100 = load i32, i32* @BTC_SET_ACT_LEAVE_LPS, align 4
  %101 = call i32 %98(%struct.btc_coexist* %99, i32 %100, i32* null)
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %102, i32 0, i32 0
  %104 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %103, align 8
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = load i32, i32* @BTC_SET_ACT_NORMAL_LPS, align 4
  %107 = call i32 %104(%struct.btc_coexist* %105, i32 %106, i32* null)
  br label %108

108:                                              ; preds = %93, %67
  br label %109

109:                                              ; preds = %108, %61
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_only(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
