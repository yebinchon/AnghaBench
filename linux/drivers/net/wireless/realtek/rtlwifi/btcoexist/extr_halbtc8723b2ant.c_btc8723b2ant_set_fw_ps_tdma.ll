; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_set_fw_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_set_fw_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[BTCoex], FW write 0x60(5bytes)=0x%x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32, i32)* @btc8723b2ant_set_fw_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %22, %6
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32 %61, i32* %65, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %67 = load i32, i32* @COMP_BT_COEXIST, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 16
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %77, %80
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  %83 = load i32, i32* %82, align 16
  %84 = or i32 %81, %83
  %85 = call i32 @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %84)
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %87 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %86, i32 0, i32 0
  %88 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %87, align 8
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %91 = call i32 %88(%struct.btc_coexist* %89, i32 96, i32 5, i32* %90)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
