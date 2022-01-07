; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtllib_device = type { %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rtllib_probe_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@RTLLIB_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@MFIE_TYPE_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtllib_device*)* @rtllib_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtllib_probe_req(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtllib_probe_request*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %10 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %14 = call i32 @rtllib_MFIE_rate_len(%struct.rtllib_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 34, %16
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @skb_reserve(%struct.sk_buff* %30, i64 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i8* @skb_put(%struct.sk_buff* %35, i32 32)
  %37 = bitcast i8* %36 to %struct.rtllib_probe_request*
  store %struct.rtllib_probe_request* %37, %struct.rtllib_probe_request** %8, align 8
  %38 = load i32, i32* @RTLLIB_STYPE_PROBE_REQ, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = load %struct.rtllib_probe_request*, %struct.rtllib_probe_request** %8, align 8
  %41 = getelementptr inbounds %struct.rtllib_probe_request, %struct.rtllib_probe_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.rtllib_probe_request*, %struct.rtllib_probe_request** %8, align 8
  %44 = getelementptr inbounds %struct.rtllib_probe_request, %struct.rtllib_probe_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.rtllib_probe_request*, %struct.rtllib_probe_request** %8, align 8
  %47 = getelementptr inbounds %struct.rtllib_probe_request, %struct.rtllib_probe_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @eth_broadcast_addr(i32 %49)
  %51 = load %struct.rtllib_probe_request*, %struct.rtllib_probe_request** %8, align 8
  %52 = getelementptr inbounds %struct.rtllib_probe_request, %struct.rtllib_probe_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ether_addr_copy(i32 %54, i32 %59)
  %61 = load %struct.rtllib_probe_request*, %struct.rtllib_probe_request** %8, align 8
  %62 = getelementptr inbounds %struct.rtllib_probe_request, %struct.rtllib_probe_request* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @eth_broadcast_addr(i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 2
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %68, %69
  %71 = call i8* @skb_put(%struct.sk_buff* %66, i32 %70)
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* @MFIE_TYPE_SSID, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %81 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @memcpy(i32* %79, i32 %83, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %6, align 8
  %90 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %91 = call i32 @rtllib_MFIE_Brate(%struct.rtllib_device* %90, i32** %6)
  %92 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %93 = call i32 @rtllib_MFIE_Grate(%struct.rtllib_device* %92, i32** %6)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %2, align 8
  br label %95

95:                                               ; preds = %29, %28
  %96 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %96
}

declare dso_local i32 @rtllib_MFIE_rate_len(%struct.rtllib_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtllib_MFIE_Brate(%struct.rtllib_device*, i32**) #1

declare dso_local i32 @rtllib_MFIE_Grate(%struct.rtllib_device*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
