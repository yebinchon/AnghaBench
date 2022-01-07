; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, %struct.tx_desc*, i32, i32 }
%struct.tx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @_rtl92e_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_free_tx_ring(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 1
  %13 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %13, i64 %15
  store %struct.rtl8192_tx_ring* %16, %struct.rtl8192_tx_ring** %6, align 8
  br label %17

17:                                               ; preds = %22, %2
  %18 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %19 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %18, i32 0, i32 4
  %20 = call i64 @skb_queue_len(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %23, i32 0, i32 2
  %25 = load %struct.tx_desc*, %struct.tx_desc** %24, align 8
  %26 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %25, i64 %28
  store %struct.tx_desc* %29, %struct.tx_desc** %7, align 8
  %30 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %31 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %30, i32 0, i32 4
  %32 = call %struct.sk_buff* @__skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %37 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %43 = call i32 @pci_unmap_single(i32 %35, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  %50 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = urem i64 %49, %53
  %55 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %67, i32 0, i32 2
  %69 = load %struct.tx_desc*, %struct.tx_desc** %68, align 8
  %70 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %71 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pci_free_consistent(i32 %60, i32 %66, %struct.tx_desc* %69, i32 %72)
  %74 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %75 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %74, i32 0, i32 2
  store %struct.tx_desc* null, %struct.tx_desc** %75, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.tx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
