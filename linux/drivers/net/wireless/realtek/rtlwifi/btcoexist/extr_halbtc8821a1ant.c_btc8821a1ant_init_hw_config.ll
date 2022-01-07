; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_init_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_init_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], 1Ant Init HW Config!!\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8821a1ant_init_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_init_hw_config(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 6
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %103

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 5
  %26 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %28 = call i32 %26(%struct.btc_coexist* %27, i32 1072)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 5
  %33 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %32, align 8
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %35 = call i32 %33(%struct.btc_coexist* %34, i32 1076)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 4
  %40 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %39, align 8
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %42 = call i32 %40(%struct.btc_coexist* %41, i32 1066)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %46 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %45, i32 0, i32 0
  %47 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %46, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %49 = call i32 %47(%struct.btc_coexist* %48, i32 1110)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %23, %20
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 0
  %55 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %57 = call i32 %55(%struct.btc_coexist* %56, i32 1936)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 192
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, 5
  store i32 %61, i32* %8, align 4
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 2
  %64 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %63, align 8
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %64(%struct.btc_coexist* %65, i32 1936, i32 %66)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 3
  %70 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %69, align 8
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %72 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %73 = call i32 %70(%struct.btc_coexist* %71, i32 %72, i32* %9)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %52
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %78 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %79 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %77, i32 %78, i32 1, i32 0)
  br label %84

80:                                               ; preds = %52
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %82 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %83 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %81, i32 %82, i32 1, i32 0)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %86 = load i32, i32* @FORCE_EXEC, align 4
  %87 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %85, i32 %86, i32 0)
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %89 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %88, i32 0, i32 2
  %90 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %89, align 8
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %92 = call i32 %90(%struct.btc_coexist* %91, i32 1902, i32 12)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %94 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %93, i32 0, i32 2
  %95 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %94, align 8
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %97 = call i32 %95(%struct.btc_coexist* %96, i32 1912, i32 3)
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %99 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %98, i32 0, i32 1
  %100 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %99, align 8
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %102 = call i32 %100(%struct.btc_coexist* %101, i32 64, i32 32, i32 1)
  br label %103

103:                                              ; preds = %84, %19
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
