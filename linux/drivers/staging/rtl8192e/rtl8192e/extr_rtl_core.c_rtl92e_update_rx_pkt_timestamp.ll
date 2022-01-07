; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c_rtl92e_update_rx_pkt_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c_rtl92e_update_rx_pkt_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtllib_rx_stats = type { i32, i32, i64 }
%struct.r8192_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_update_rx_pkt_timestamp(%struct.net_device* %0, %struct.rtllib_rx_stats* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtllib_rx_stats*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtllib_rx_stats* %1, %struct.rtllib_rx_stats** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %5, align 8
  %8 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %4, align 8
  %9 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %4, align 8
  %14 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %4, align 8
  %22 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %29

23:                                               ; preds = %12, %2
  %24 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %4, align 8
  %25 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
