; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_coex_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_coex_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[BTCoex], set coex table, set 0x6c0 = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], set coex table, set 0x6c4 = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"[BTCoex], set coex table, set 0x6c8 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[BTCoex], set coex table, set 0x6cc = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32)* @btc8821a2ant_set_coex_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_coex_table(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btc_coexist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 2
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  store %struct.rtl_priv* %14, %struct.rtl_priv** %11, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %16 = load i32, i32* @COMP_BT_COEXIST, align 4
  %17 = load i32, i32* @DBG_LOUD, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RT_TRACE(%struct.rtl_priv* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 1
  %22 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %21, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %22(%struct.btc_coexist* %23, i32 1728, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 1
  %33 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %32, align 8
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %33(%struct.btc_coexist* %34, i32 1732, i32 %35)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %43 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %42, i32 0, i32 1
  %44 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %43, align 8
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 %44(%struct.btc_coexist* %45, i32 1736, i32 %46)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %49 = load i32, i32* @COMP_BT_COEXIST, align 4
  %50 = load i32, i32* @DBG_LOUD, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 0
  %55 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 %55(%struct.btc_coexist* %56, i32 1740, i32 %57)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
