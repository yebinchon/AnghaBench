; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*)* }
%struct.rtl_tcb_desc = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@ERFON = common dso_local global i64 0, align 8
@RTL_STATUS_INTERFACE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtl_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_ps_ctl*, align 8
  %10 = alloca %struct.rtl_tcb_desc, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %17)
  store %struct.rtl_ps_ctl* %18, %struct.rtl_ps_ctl** %9, align 8
  %19 = call i32 @memset(%struct.rtl_tcb_desc* %10, i32 0, i32 4)
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %21 = call i64 @is_hal_stop(%struct.rtl_hal* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %25 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ERFON, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ true, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %68

35:                                               ; preds = %29
  %36 = load i32, i32* @RTL_STATUS_INTERFACE_START, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %68

42:                                               ; preds = %35
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*)** %46, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %49 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 %47(%struct.ieee80211_hw* %48, i32 %51, %struct.sk_buff* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %42
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, i32, %struct.sk_buff*, %struct.rtl_tcb_desc*)** %59, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 %60(%struct.ieee80211_hw* %61, i32 %64, %struct.sk_buff* %65, %struct.rtl_tcb_desc* %10)
  br label %67

67:                                               ; preds = %55, %42
  br label %71

68:                                               ; preds = %41, %34
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %67
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @memset(%struct.rtl_tcb_desc*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
