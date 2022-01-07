; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.tx_double_buffer_desc = type { i32, i32, i32, i8*, i8* }
%struct.ieee80211_rate = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*)* @wl1251_tx_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_tx_fill_hdr(%struct.wl1251* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.tx_double_buffer_desc*, align 8
  %9 = alloca %struct.ieee80211_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @wl1251_tx_id(%struct.wl1251* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.tx_double_buffer_desc* @skb_push(%struct.sk_buff* %31, i32 32)
  store %struct.tx_double_buffer_desc* %32, %struct.tx_double_buffer_desc** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, 32
  %37 = call i8* @cpu_to_le16(i64 %36)
  %38 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %39 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %44 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %42, %struct.ieee80211_tx_info* %43)
  store %struct.ieee80211_rate* %44, %struct.ieee80211_rate** %9, align 8
  %45 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %50 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = call i32 @cpu_to_le32(i32 65536)
  %52 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %53 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %56 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %57)
  %59 = call i32 @wl1251_tx_get_queue(i32 %58)
  %60 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %61 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @wl1251_tx_control(%struct.tx_double_buffer_desc* %62, %struct.ieee80211_tx_info* %63, i32 %64)
  %66 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %67 = call i32 @wl1251_tx_frag_block_num(%struct.tx_double_buffer_desc* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %25, %23, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @wl1251_tx_id(%struct.wl1251*, %struct.sk_buff*) #1

declare dso_local %struct.tx_double_buffer_desc* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1251_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_tx_control(%struct.tx_double_buffer_desc*, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @wl1251_tx_frag_block_num(%struct.tx_double_buffer_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
