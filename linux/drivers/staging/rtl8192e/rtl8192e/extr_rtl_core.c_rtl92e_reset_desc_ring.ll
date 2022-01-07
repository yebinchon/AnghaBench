; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c_rtl92e_reset_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c_rtl92e_reset_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.rtl8192_tx_ring*, i64*, %struct.rx_desc** }
%struct.rtl8192_tx_ring = type { i64, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { i32 }
%struct.rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_RX_QUEUE = common dso_local global i32 0, align 4
@MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_reset_desc_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rx_desc*, align 8
  %8 = alloca %struct.rtl8192_tx_ring*, align 8
  %9 = alloca %struct.tx_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_RX_QUEUE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 5
  %20 = load %struct.rx_desc**, %struct.rx_desc*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %20, i64 %22
  %24 = load %struct.rx_desc*, %struct.rx_desc** %23, align 8
  %25 = icmp ne %struct.rx_desc* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %17
  store %struct.rx_desc* null, %struct.rx_desc** %7, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 5
  %36 = load %struct.rx_desc**, %struct.rx_desc*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %36, i64 %38
  %40 = load %struct.rx_desc*, %struct.rx_desc** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %40, i64 %42
  store %struct.rx_desc* %43, %struct.rx_desc** %7, align 8
  %44 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %45 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %17
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %13

60:                                               ; preds = %13
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %130, %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @MAX_TX_QUEUE_COUNT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 3
  %72 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %72, i64 %74
  %76 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %75, i32 0, i32 3
  %77 = load %struct.tx_desc*, %struct.tx_desc** %76, align 8
  %78 = icmp ne %struct.tx_desc* %77, null
  br i1 %78, label %79, label %129

79:                                               ; preds = %69
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 3
  %82 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %82, i64 %84
  store %struct.rtl8192_tx_ring* %85, %struct.rtl8192_tx_ring** %8, align 8
  br label %86

86:                                               ; preds = %91, %79
  %87 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %88 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %87, i32 0, i32 2
  %89 = call i64 @skb_queue_len(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %86
  %92 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %93 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %92, i32 0, i32 3
  %94 = load %struct.tx_desc*, %struct.tx_desc** %93, align 8
  %95 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %96 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %94, i64 %97
  store %struct.tx_desc* %98, %struct.tx_desc** %9, align 8
  %99 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %100 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %99, i32 0, i32 2
  %101 = call %struct.sk_buff* @__skb_dequeue(i32* %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %10, align 8
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %106 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %112 = call i32 @pci_unmap_single(i32 %104, i32 %107, i32 %110, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  %115 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %116 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  %119 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %120 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = urem i64 %118, %122
  %124 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %125 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %86

126:                                              ; preds = %86
  %127 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %128 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %69
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %65

133:                                              ; preds = %65
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 1
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
