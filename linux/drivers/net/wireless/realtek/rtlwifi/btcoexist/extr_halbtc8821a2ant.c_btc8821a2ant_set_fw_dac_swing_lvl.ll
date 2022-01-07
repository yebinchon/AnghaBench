; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_dac_swing_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_dac_swing_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[BTCoex], Set Dac Swing Level = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x64 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8821a2ant_set_fw_dac_swing_lvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_fw_dac_swing_lvl(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [1 x i32], align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 1
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = load i32, i32* @COMP_BT_COEXIST, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 0
  %26 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 100, i32 1, i32* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
