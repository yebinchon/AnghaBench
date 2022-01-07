; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_fw_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_fw_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[BTCoex], FW write 0x60(5bytes) = 0x%x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32, i32)* @btc8192e2ant_set_fw_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_set_fw_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = bitcast [5 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 20, i1 false)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %49, i32* %53, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %55 = load i32, i32* @COMP_BT_COEXIST, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 24
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 16
  %65 = or i32 %61, %64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %65, %68
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = or i32 %69, %71
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %72)
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 0
  %76 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %79 = call i32 %76(%struct.btc_coexist* %77, i32 96, i32 5, i32* %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
