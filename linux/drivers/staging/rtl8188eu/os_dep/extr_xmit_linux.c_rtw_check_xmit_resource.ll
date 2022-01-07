; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_check_xmit_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_check_xmit_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_3__, %struct.xmit_priv }
%struct.TYPE_3__ = type { i64 }
%struct.xmit_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@WMM_XMIT_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sk_buff*)* @rtw_check_xmit_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_check_xmit_resource(%struct.adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xmit_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 2
  store %struct.xmit_priv* %8, %struct.xmit_priv** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %18 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WMM_XMIT_THRESHOLD, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @netif_stop_subqueue(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %26, %16
  br label %54

33:                                               ; preds = %2
  %34 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %35 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 4
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @netdev_get_tx_queue(i32 %41, i64 %42)
  %44 = call i32 @netif_tx_queue_stopped(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @netif_stop_subqueue(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %32
  ret void
}

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_subqueue(i32, i64) #1

declare dso_local i32 @netif_tx_queue_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
