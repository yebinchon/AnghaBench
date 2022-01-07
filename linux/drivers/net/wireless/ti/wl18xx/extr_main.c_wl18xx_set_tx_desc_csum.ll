; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_tx_desc_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_tx_desc_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl1271_tx_hw_descr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32 }

@checksum_param = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*)* @wl18xx_set_tx_desc_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_set_tx_desc_csum(%struct.wl1271* %0, %struct.wl1271_tx_hw_descr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl1271_tx_hw_descr* %1, %struct.wl1271_tx_hw_descr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i32, i32* @checksum_param, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %13 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %55

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %22 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %55

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @skb_network_header(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_mac_header(%struct.sk_buff* %26)
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 128
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %36 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %55

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 1
  %40 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %41 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @skb_network_header(%struct.sk_buff* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.iphdr*
  store %struct.iphdr* %46, %struct.iphdr** %8, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %52 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %37, %34, %20, %11
  ret void
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
