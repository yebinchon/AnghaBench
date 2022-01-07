; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32*, i32, %struct.vnt_tx_desc**, i32 }
%struct.vnt_tx_desc = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.vnt_tx_desc* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@TYPE_AC0DMA = common dso_local global i64 0, align 8
@TYPE_TXDMA0 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TD_FLAGS_NETIF_SKB = common dso_local global i32 0, align 4
@TCR_STP = common dso_local global i32 0, align 4
@TCR_EDP = common dso_local global i32 0, align 4
@EDMSDU = common dso_local global i32 0, align 4
@OWNED_BY_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, %struct.sk_buff*)* @vnt_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_tx_packet(%struct.vnt_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.vnt_tx_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %6, align 8
  %14 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 1
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ieee80211_is_data(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @TYPE_AC0DMA, align 8
  store i64 %24, i64* %8, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @TYPE_TXDMA0, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @AVAIL_TD(%struct.vnt_private* %28, i64 %29)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ieee80211_stop_queues(i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %154

43:                                               ; preds = %27
  %44 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 4
  %46 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %46, i64 %47
  %49 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %48, align 8
  store %struct.vnt_tx_desc* %49, %struct.vnt_tx_desc** %7, align 8
  %50 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %51 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %55 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store %struct.sk_buff* %53, %struct.sk_buff** %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @TYPE_AC0DMA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load i32, i32* @TD_FLAGS_NETIF_SKB, align 4
  %63 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %64 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %43
  %68 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %69 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %68, i32 0, i32 4
  %70 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %69, align 8
  %71 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %72 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %71, i32 0, i32 4
  %73 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %73, i64 %74
  store %struct.vnt_tx_desc* %70, %struct.vnt_tx_desc** %75, align 8
  %76 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %77 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @vnt_generate_fifo_header(%struct.vnt_private* %80, i64 %81, %struct.vnt_tx_desc* %82, %struct.sk_buff* %83)
  %85 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %86 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %85, i32 0, i32 1
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %90 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* @TCR_STP, align 4
  %92 = load i32, i32* @TCR_EDP, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @EDMSDU, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %97 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %102 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cpu_to_le16(i32 %105)
  %107 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %108 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %111 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %117 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = call i32 (...) @wmb()
  %119 = load i32, i32* @OWNED_BY_NIC, align 4
  %120 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %121 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = call i32 (...) @wmb()
  %124 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %7, align 8
  %125 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TD_FLAGS_NETIF_SKB, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %67
  %133 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %134 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @MACvTransmitAC0(i32 %135)
  br label %142

137:                                              ; preds = %67
  %138 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %139 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @MACvTransmit0(i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %144 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %151 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %150, i32 0, i32 1
  %152 = load i64, i64* %9, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %142, %32
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @AVAIL_TD(%struct.vnt_private*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @vnt_generate_fifo_header(%struct.vnt_private*, i64, %struct.vnt_tx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @MACvTransmitAC0(i32) #1

declare dso_local i32 @MACvTransmit0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
