; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_fill_ctrlset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_fill_ctrlset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i64, i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.zd_ctrlset = type { i64, i8*, i8*, i32, i64, i8* }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FCS_LEN = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_mac*, %struct.sk_buff*)* @fill_ctrlset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ctrlset(%struct.zd_mac* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_mac*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.zd_ctrlset*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.zd_mac* %0, %struct.zd_mac** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FCS_LEN, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.zd_ctrlset* @skb_push(%struct.sk_buff* %22, i32 48)
  store %struct.zd_ctrlset* %23, %struct.zd_ctrlset** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ule i32 %26, 65535
  %28 = zext i1 %27 to i32
  %29 = call i32 @ZD_ASSERT(i32 %28)
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ieee80211_is_pspoll(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %40 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %43 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %41, %struct.ieee80211_tx_info* %42)
  store %struct.ieee80211_rate* %43, %struct.ieee80211_rate** %10, align 8
  %44 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %48 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %38
  %60 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %64 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %38
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %69 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %71 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %74 = call i32 @cs_set_control(%struct.zd_mac* %70, %struct.zd_ctrlset* %71, %struct.ieee80211_hdr* %72, %struct.ieee80211_tx_info* %73)
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = add i64 %76, 48
  %78 = add i64 %77, 10
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ule i32 %80, 65535
  %82 = zext i1 %81 to i32
  %83 = call i32 @ZD_ASSERT(i32 %82)
  %84 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %85 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %84, i32 0, i32 0
  %86 = call i64 @zd_chip_is_zd1211b(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %65
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub i32 %89, %90
  br label %94

92:                                               ; preds = %65
  %93 = load i32, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %91, %88 ], [ %93, %92 ]
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %98 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %100 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %102 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %101, i32 0, i32 4
  %103 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %104 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ZD_RATE(i32 %105)
  %107 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %108 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @le16_to_cpu(i8* %109)
  %111 = call i32 @zd_calc_tx_length_us(i64* %102, i32 %106, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %94
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %94
  %117 = load i32, i32* %6, align 4
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %120 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %122 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %114
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.zd_ctrlset* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @ieee80211_is_pspoll(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cs_set_control(%struct.zd_mac*, %struct.zd_ctrlset*, %struct.ieee80211_hdr*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @zd_chip_is_zd1211b(i32*) #1

declare dso_local i32 @zd_calc_tx_length_us(i64*, i32, i32) #1

declare dso_local i32 @ZD_RATE(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
