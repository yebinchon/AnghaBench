; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[BTCoex], FW write 0x60(5bytes) = 0x%x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32, i32)* @btc8821a2ant_set_fw_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_fw_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca [5 x i32], align 16
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %16, align 8
  store %struct.rtl_priv* %17, %struct.rtl_priv** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %48, i32* %52, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %54 = load i32, i32* @COMP_BT_COEXIST, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 16
  %64 = or i32 %60, %63
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %64, %67
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  %70 = load i32, i32* %69, align 16
  %71 = or i32 %68, %70
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %71)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %74 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %73, i32 0, i32 0
  %75 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %74, align 8
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %78 = call i32 %75(%struct.btc_coexist* %76, i32 96, i32 5, i32* %77)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
