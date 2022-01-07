; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_prepare_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_prepare_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.rtl8192_tx_ring* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, %struct.tx_desc*, %struct.cb_desc*, %struct.sk_buff*)* }
%struct.net_device = type { i32 }
%struct.tx_desc = type { i32 }
%struct.cb_desc = type { i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.net_device* }
%struct.rtl8192_tx_ring = type { i32, %struct.tx_desc* }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*)* @_rtl92e_prepare_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_prepare_beacon(%struct.r8192_priv* %0) #0 {
  %2 = alloca %struct.r8192_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cb_desc*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  %8 = alloca %struct.tx_desc*, align 8
  store %struct.r8192_priv* %0, %struct.r8192_priv** %2, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store %struct.cb_desc* null, %struct.cb_desc** %6, align 8
  store %struct.rtl8192_tx_ring* null, %struct.rtl8192_tx_ring** %7, align 8
  store %struct.tx_desc* null, %struct.tx_desc** %8, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 2
  %16 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %15, align 8
  %17 = load i64, i64* @BEACON_QUEUE, align 8
  %18 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %16, i64 %17
  store %struct.rtl8192_tx_ring* %18, %struct.rtl8192_tx_ring** %7, align 8
  %19 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %19, i32 0, i32 0
  %21 = call %struct.sk_buff* @__skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.sk_buff* @rtllib_get_beacon(%struct.TYPE_4__* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %75

31:                                               ; preds = %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 8
  %36 = inttoptr i64 %35 to %struct.cb_desc*
  store %struct.cb_desc* %36, %struct.cb_desc** %6, align 8
  %37 = load i64, i64* @BEACON_QUEUE, align 8
  %38 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %39 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %41 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %40, i32 0, i32 1
  store i32 2, i32* %41, align 8
  %42 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %43 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %42, i32 0, i32 2
  store i32 7, i32* %43, align 4
  %44 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %45 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %44, i32 0, i32 3
  store i32 1, i32* %45, align 8
  %46 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %47 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %46, i32 0, i32 4
  store i32 1, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @skb_push(%struct.sk_buff* %48, i32 %53)
  %55 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %56 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %55, i32 0, i32 1
  %57 = load %struct.tx_desc*, %struct.tx_desc** %56, align 8
  %58 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %57, i64 0
  store %struct.tx_desc* %58, %struct.tx_desc** %8, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*, %struct.tx_desc*, %struct.cb_desc*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.tx_desc*, %struct.cb_desc*, %struct.sk_buff*)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %66 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 %63(%struct.net_device* %64, %struct.tx_desc* %65, %struct.cb_desc* %66, %struct.sk_buff* %67)
  %69 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %70 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @__skb_queue_tail(i32* %70, %struct.sk_buff* %71)
  %73 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %74 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @rtllib_get_beacon(%struct.TYPE_4__*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
