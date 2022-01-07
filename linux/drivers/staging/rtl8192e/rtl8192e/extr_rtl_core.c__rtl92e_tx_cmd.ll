; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__*, %struct.rtl8192_tx_ring* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.tx_desc_cmd*, %struct.cb_desc*, %struct.sk_buff*)* }
%struct.tx_desc_cmd = type { i32 }
%struct.cb_desc = type { i32 }
%struct.rtl8192_tx_ring = type { i32, i32, i32, i32* }

@TXCMD_QUEUE = common dso_local global i64 0, align 8
@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @_rtl92e_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_tx_cmd(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.tx_desc_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cb_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %5, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 2
  %19 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %18, align 8
  %20 = load i64, i64* @TXCMD_QUEUE, align 8
  %21 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %19, i64 %20
  store %struct.rtl8192_tx_ring* %21, %struct.rtl8192_tx_ring** %6, align 8
  %22 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %25, i32 0, i32 2
  %27 = call i32 @skb_queue_len(i32* %26)
  %28 = add i32 %24, %27
  %29 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.tx_desc_cmd*
  store %struct.tx_desc_cmd* %39, %struct.tx_desc_cmd** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %struct.cb_desc*
  store %struct.cb_desc* %45, %struct.cb_desc** %9, align 8
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.net_device*, %struct.tx_desc_cmd*, %struct.cb_desc*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.tx_desc_cmd*, %struct.cb_desc*, %struct.sk_buff*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load %struct.tx_desc_cmd*, %struct.tx_desc_cmd** %7, align 8
  %53 = load %struct.cb_desc*, %struct.cb_desc** %9, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 %50(%struct.net_device* %51, %struct.tx_desc_cmd* %52, %struct.cb_desc* %53, %struct.sk_buff* %54)
  %56 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %56, i32 0, i32 2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @__skb_queue_tail(i32* %57, %struct.sk_buff* %58)
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
