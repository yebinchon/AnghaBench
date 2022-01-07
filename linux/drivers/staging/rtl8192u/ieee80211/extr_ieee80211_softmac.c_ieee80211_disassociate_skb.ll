; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_disassociate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_disassociate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_network = type { i32 }
%struct.ieee80211_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_disassoc = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i8* }

@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_network*, %struct.ieee80211_device*, i32)* @ieee80211_disassociate_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ieee80211_disassociate_skb(%struct.ieee80211_network* %0, %struct.ieee80211_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_network*, align 8
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_disassoc*, align 8
  store %struct.ieee80211_network* %0, %struct.ieee80211_network** %5, align 8
  store %struct.ieee80211_device* %1, %struct.ieee80211_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.sk_buff* @dev_alloc_skb(i32 40)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.ieee80211_disassoc* @skb_put(%struct.sk_buff* %15, i32 40)
  store %struct.ieee80211_disassoc* %16, %struct.ieee80211_disassoc** %9, align 8
  %17 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %18, i8** %21, align 8
  %22 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %37, i32 %42, i32 %43)
  %45 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.ieee80211_disassoc*, %struct.ieee80211_disassoc** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_disassoc, %struct.ieee80211_disassoc* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %4, align 8
  br label %59

59:                                               ; preds = %14, %13
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %60
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local %struct.ieee80211_disassoc* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
