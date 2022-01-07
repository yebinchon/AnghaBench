; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_null_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_null_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_80211_hdr_3addr = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_device*, i16)* @ieee80211_null_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ieee80211_null_func(%struct.ieee80211_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = call %struct.sk_buff* @dev_alloc_skb(i32 16)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.rtl_80211_hdr_3addr* @skb_put(%struct.sk_buff* %13, i32 16)
  store %struct.rtl_80211_hdr_3addr* %14, %struct.rtl_80211_hdr_3addr** %7, align 8
  %15 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %7, align 8
  %16 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @memcpy(i32 %17, i32 %21, i32 %22)
  %24 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %26, i32 %31, i32 %32)
  %34 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %36, i32 %40, i32 %41)
  %43 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %44 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %47 = or i32 %45, %46
  %48 = load i16, i16* %5, align 2
  %49 = sext i16 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %12
  %52 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  br label %54

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = or i32 %47, %55
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %7, align 8
  %59 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %3, align 8
  br label %61

61:                                               ; preds = %54, %11
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %62
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local %struct.rtl_80211_hdr_3addr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
