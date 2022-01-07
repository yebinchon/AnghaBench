; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_softmac_ps_mgmt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_softmac_ps_mgmt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_device = type { i16, i32*, i32, i32 (%struct.sk_buff*, i32)*, i32, i32 (%struct.sk_buff*, i32, i32)* }
%struct.rtl_80211_hdr_3addr = type { i8* }

@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_device*)* @softmac_ps_mgmt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softmac_ps_mgmt_xmit(%struct.sk_buff* %0, %struct.ieee80211_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ieee80211_device* %1, %struct.ieee80211_device** %4, align 8
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @IEEE_SOFTMAC_SINGLE_QUEUE, align 2
  %12 = sext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rtl_80211_hdr_3addr*
  store %struct.rtl_80211_hdr_3addr* %18, %struct.rtl_80211_hdr_3addr** %6, align 8
  %19 = load i16, i16* %5, align 2
  %20 = icmp ne i16 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4095
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 0, i32* %41, align 4
  br label %49

42:                                               ; preds = %21
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @netif_trans_update(i32 %52)
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 5
  %56 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %56(%struct.sk_buff* %57, i32 %60, i32 %63)
  br label %102

65:                                               ; preds = %2
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 4095
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 0, i32* %85, align 4
  br label %93

86:                                               ; preds = %65
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 3
  %96 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %96(%struct.sk_buff* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %49
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @netif_trans_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
