; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_init_hwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_init_hwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], 2Ant Init HW Config!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_ANT_WIFI_AT_MAIN = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@FORCE_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 4
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = load i32, i32* @COMP_BT_COEXIST, align 4
  %10 = load i32, i32* @DBG_LOUD, align 4
  %11 = call i32 @RT_TRACE(%struct.rtl_priv* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 3
  %14 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %13, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i32, i32* @BTC_RF_A, align 4
  %17 = call i32 %14(%struct.btc_coexist* %15, i32 %16, i32 30, i32 1048575)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 0
  %22 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %21, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = call i32 %22(%struct.btc_coexist* %23, i32 1936)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 192
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 5
  store i32 %28, i32* %4, align 4
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 2
  %31 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %30, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %31(%struct.btc_coexist* %32, i32 1936, i32 %33)
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = load i32, i32* @BTC_ANT_WIFI_AT_MAIN, align 4
  %37 = call i32 @btc8821a2ant_set_ant_path(%struct.btc_coexist* %35, i32 %36, i32 1, i32 0)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @FORCE_EXEC, align 4
  %42 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %40, i32 %41, i32 0)
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %43, i32 0, i32 2
  %45 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %44, align 8
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = call i32 %45(%struct.btc_coexist* %46, i32 1902, i32 4)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 2
  %50 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %49, align 8
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = call i32 %50(%struct.btc_coexist* %51, i32 1912, i32 3)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 1
  %55 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %57 = call i32 %55(%struct.btc_coexist* %56, i32 64, i32 32, i32 1)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a2ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
