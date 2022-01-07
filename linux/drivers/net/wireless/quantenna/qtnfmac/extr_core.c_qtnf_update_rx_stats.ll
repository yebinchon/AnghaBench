; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qtnf_vif = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_update_rx_stats(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %7)
  store %struct.qtnf_vif* %8, %struct.qtnf_vif** %5, align 8
  %9 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %10 = icmp ne %struct.qtnf_vif* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %62

38:                                               ; preds = %17
  %39 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %40 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %41)
  store %struct.pcpu_sw_netstats* %42, %struct.pcpu_sw_netstats** %6, align 8
  %43 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %44 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %43, i32 0, i32 0
  %45 = call i32 @u64_stats_update_begin(i32* %44)
  %46 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %47 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %54 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %60 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %59, i32 0, i32 0
  %61 = call i32 @u64_stats_update_end(i32* %60)
  br label %62

62:                                               ; preds = %38, %22
  ret void
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
