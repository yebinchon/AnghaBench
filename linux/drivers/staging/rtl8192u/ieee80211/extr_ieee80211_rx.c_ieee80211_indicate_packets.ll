; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_indicate_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_indicate_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32 }
%struct.ieee80211_rxb = type { i64, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32*, i32, i32, i32, i32, i32 }

@rfc1042_header = common dso_local global i32 0, align 4
@SNAP_SIZE = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_indicate_packets(%struct.ieee80211_device* %0, %struct.ieee80211_rxb** %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ieee80211_rxb**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rxb*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.ieee80211_rxb** %1, %struct.ieee80211_rxb*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %152, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %155

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_rxb**, %struct.ieee80211_rxb*** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %17, i64 %18
  %20 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %19, align 8
  store %struct.ieee80211_rxb* %20, %struct.ieee80211_rxb** %10, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %146, %16
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %149

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %28, i32 0, i32 3
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %30, i64 %31
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %39, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 8
  br i1 %49, label %50, label %94

50:                                               ; preds = %27
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @rfc1042_header, align 4
  %55 = load i32, i32* @SNAP_SIZE, align 4
  %56 = call i64 @memcmp(i32* %53, i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ETH_P_AARP, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ETH_P_IPX, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %58, %50
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @bridge_tunnel_header, align 4
  %71 = load i32, i32* @SNAP_SIZE, align 4
  %72 = call i64 @memcmp(i32* %69, i32 %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %66, %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = load i32, i32* @SNAP_SIZE, align 4
  %77 = call i32 @skb_pull(%struct.sk_buff* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @skb_push(%struct.sk_buff* %78, i32 %79)
  %81 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32 %80, i32 %83, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @skb_push(%struct.sk_buff* %86, i32 %87)
  %89 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32 %88, i32 %91, i32 %92)
  br label %117

94:                                               ; preds = %66, %27
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = call i32 @skb_push(%struct.sk_buff* %98, i32 2)
  %100 = call i32 @put_unaligned_be16(i32 %97, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = call i32 @skb_push(%struct.sk_buff* %101, i32 %102)
  %104 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32 %103, i32 %106, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i32 @skb_push(%struct.sk_buff* %109, i32 %110)
  %112 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32 %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %94, %74
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @eth_type_trans(%struct.sk_buff* %121, i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memset(i32 %130, i32 0, i32 4)
  %132 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @CHECKSUM_NONE, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @jiffies, align 4
  %141 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %142 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = call i32 @netif_rx(%struct.sk_buff* %143)
  br label %145

145:                                              ; preds = %120, %117
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  br label %21

149:                                              ; preds = %21
  %150 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %10, align 8
  %151 = call i32 @kfree(%struct.ieee80211_rxb* %150)
  store %struct.ieee80211_rxb* null, %struct.ieee80211_rxb** %10, align 8
  br label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  br label %12

155:                                              ; preds = %12
  ret void
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.ieee80211_rxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
