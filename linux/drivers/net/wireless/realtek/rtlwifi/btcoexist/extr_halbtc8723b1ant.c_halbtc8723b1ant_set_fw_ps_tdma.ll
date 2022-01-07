; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_set_fw_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_set_fw_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[BTCoex], FW for 1Ant AP mode\0A\00", align 1
@BIT6 = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"[BTCoex], PS-TDMA H2C cmd =0x%x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32, i32)* @halbtc8723b1ant_set_fw_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca [5 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 2
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  store %struct.rtl_priv* %20, %struct.rtl_priv** %13, align 8
  %21 = bitcast [5 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 20, i1 false)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 1
  %26 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %28 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i32* %17)
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BIT4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BIT5, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %44 = load i32, i32* @COMP_BT_COEXIST, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @BIT4, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %15, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @BIT5, align 4
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* @BIT5, align 4
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @BIT6, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %42, %37, %32
  br label %62

62:                                               ; preds = %61, %6
  %63 = load i32, i32* %15, align 4
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %16, align 4
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %71, i32* %72, align 16
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %93, i32* %97, align 4
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %99 = load i32, i32* @COMP_BT_COEXIST, align 4
  %100 = load i32, i32* @DBG_LOUD, align 4
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 24
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 16
  %109 = or i32 %105, %108
  %110 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %109, %112
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  %115 = load i32, i32* %114, align 16
  %116 = or i32 %113, %115
  %117 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %116)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %119 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %118, i32 0, i32 0
  %120 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %119, align 8
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %123 = call i32 %120(%struct.btc_coexist* %121, i32 96, i32 5, i32* %122)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
