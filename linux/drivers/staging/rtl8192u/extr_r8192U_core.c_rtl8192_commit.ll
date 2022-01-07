; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_commit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = call i32 @rtl8192_cancel_deferred_work(%struct.r8192_priv* %15)
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 2
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ieee80211_softmac_stop_protocol(i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @rtl8192_rtx_disable(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @_rtl8192_up(%struct.net_device* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_cancel_deferred_work(%struct.r8192_priv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ieee80211_softmac_stop_protocol(i32) #1

declare dso_local i32 @rtl8192_rtx_disable(%struct.net_device*) #1

declare dso_local i32 @_rtl8192_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
