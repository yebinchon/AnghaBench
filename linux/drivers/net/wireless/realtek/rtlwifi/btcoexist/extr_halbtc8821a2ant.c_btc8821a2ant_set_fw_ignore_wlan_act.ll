; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_ignore_wlan_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_fw_ignore_wlan_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BIT0 = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8821a2ant_set_fw_ignore_wlan_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_fw_ignore_wlan_act(%struct.btc_coexist* %0, i32 %1) #0 {
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
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @BIT0, align 4
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = load i32, i32* @COMP_BT_COEXIST, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 0
  %27 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %26, align 8
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %30 = call i32 %27(%struct.btc_coexist* %28, i32 99, i32 1, i32* %29)
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
