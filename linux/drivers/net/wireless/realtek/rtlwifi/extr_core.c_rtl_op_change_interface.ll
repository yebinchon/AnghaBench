; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_change_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_change_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.rtl_priv = type { i32 }

@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"p2p  %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @rtl_op_change_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_change_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call i32 @rtl_op_remove_interface(%struct.ieee80211_hw* %13, %struct.ieee80211_vif* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %24 = call i32 @rtl_op_add_interface(%struct.ieee80211_hw* %22, %struct.ieee80211_vif* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %26 = load i32, i32* @COMP_MAC80211, align 4
  %27 = load i32, i32* @DBG_LOUD, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_op_remove_interface(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rtl_op_add_interface(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
