; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_monitor_bt_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_monitor_bt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@MASKLWORD = common dso_local global i32 0, align 4
@MASKHWORD = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"[BTCoex] High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"[BTCoex] Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_monitor_bt_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_monitor_bt_ctr(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  store %struct.rtl_priv* %13, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1904, i32* %4, align 4
  store i32 1908, i32* %5, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 0
  %16 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %15, align 8
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.btc_coexist* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MASKLWORD, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MASKHWORD, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %8, align 4
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 0
  %29 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %28, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %29(%struct.btc_coexist* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MASKLWORD, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MASKHWORD, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @COMP_BT_COEXIST, align 4
  %54 = load i32, i32* @DBG_LOUD, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 1
  %72 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = call i32 %72(%struct.btc_coexist* %73, i32 1902, i32 12)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
