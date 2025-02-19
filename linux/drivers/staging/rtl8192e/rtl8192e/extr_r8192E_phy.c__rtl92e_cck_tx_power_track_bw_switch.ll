; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_cck_tx_power_track_bw_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_cck_tx_power_track_bw_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@IC_VersionCut_D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_cck_tx_power_track_bw_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_cck_tx_power_track_bw_switch(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IC_VersionCut_D, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @_rtl92e_cck_tx_power_track_bw_switch_tssi(%struct.net_device* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @_rtl92e_cck_tx_power_track_bw_switch_thermal(%struct.net_device* %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_cck_tx_power_track_bw_switch_tssi(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_cck_tx_power_track_bw_switch_thermal(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
