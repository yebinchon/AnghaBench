; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_process_agg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_process_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtl_priv = type { i32 }
%struct.ieee80211_rx_status = type { i32, i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fake del\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32)* @process_agg_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_agg_start(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.ieee80211_rx_status, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  %12 = bitcast %struct.ieee80211_rx_status* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.sk_buff* @rtl_make_del_ba(%struct.ieee80211_hw* %13, i32 %16, i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %8, i32 0, i32 0
  store i32 60, i32* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %51)
  %53 = call i32 @memcpy(i32 %52, %struct.ieee80211_rx_status* %8, i32 32)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %55 = load i32, i32* @COMP_INIT, align 4
  %56 = load i32, i32* @DBG_DMESG, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %64, %struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %24, %3
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @rtl_make_del_ba(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
