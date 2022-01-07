; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_indicate_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_indicate_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, %struct.TYPE_4__*, %struct.net_device_stats }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device_stats = type { i32, i32 }
%struct.rtllib_rxb = type { i64, i32*, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i32*, i32, i32, %struct.TYPE_4__*, i32, i32 }

@rfc1042_header = common dso_local global i32 0, align 4
@SNAP_SIZE = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_indicate_packets(%struct.rtllib_device* %0, %struct.rtllib_rxb** %1, i64 %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.rtllib_rxb**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtllib_rxb*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.rtllib_rxb** %1, %struct.rtllib_rxb*** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 2
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %184, %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %187

20:                                               ; preds = %16
  %21 = load %struct.rtllib_rxb**, %struct.rtllib_rxb*** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.rtllib_rxb*, %struct.rtllib_rxb** %21, i64 %22
  %24 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %23, align 8
  store %struct.rtllib_rxb* %24, %struct.rtllib_rxb** %11, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %178, %20
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %28 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %181

31:                                               ; preds = %25
  %32 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %33 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %32, i32 0, i32 3
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %98

54:                                               ; preds = %31
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @rfc1042_header, align 4
  %59 = load i32, i32* @SNAP_SIZE, align 4
  %60 = call i64 @memcmp(i32* %57, i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @ETH_P_AARP, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ETH_P_IPX, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66, %62, %54
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @bridge_tunnel_header, align 4
  %75 = load i32, i32* @SNAP_SIZE, align 4
  %76 = call i64 @memcmp(i32* %73, i32 %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %70, %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = load i32, i32* @SNAP_SIZE, align 4
  %81 = call i32 @skb_pull(%struct.sk_buff* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i32 @skb_push(%struct.sk_buff* %82, i32 %83)
  %85 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %86 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32 %84, i32* %87, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @skb_push(%struct.sk_buff* %90, i32 %91)
  %93 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %94 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32 %92, i32* %95, i32 %96)
  br label %121

98:                                               ; preds = %70, %31
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = call i32 @skb_push(%struct.sk_buff* %102, i32 2)
  %104 = call i32 @memcpy(i32 %103, i32* %13, i32 2)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @skb_push(%struct.sk_buff* %105, i32 %106)
  %108 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %109 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %107, i32* %110, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @skb_push(%struct.sk_buff* %113, i32 %114)
  %116 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %117 = getelementptr inbounds %struct.rtllib_rxb, %struct.rtllib_rxb* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = call i32 @memcpy(i32 %115, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %98, %78
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %124, label %177

124:                                              ; preds = %121
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memset(i32 %138, i32 0, i32 4)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %142 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = call i32 @eth_type_trans(%struct.sk_buff* %140, %struct.TYPE_4__* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %148 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 3
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %161
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @CHECKSUM_NONE, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @jiffies, align 4
  %173 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %174 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = call i32 @netif_rx(%struct.sk_buff* %175)
  br label %177

177:                                              ; preds = %124, %121
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %8, align 8
  br label %25

181:                                              ; preds = %25
  %182 = load %struct.rtllib_rxb*, %struct.rtllib_rxb** %11, align 8
  %183 = call i32 @kfree(%struct.rtllib_rxb* %182)
  store %struct.rtllib_rxb* null, %struct.rtllib_rxb** %11, align 8
  br label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %9, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %9, align 8
  br label %16

187:                                              ; preds = %16
  ret void
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.rtllib_rxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
