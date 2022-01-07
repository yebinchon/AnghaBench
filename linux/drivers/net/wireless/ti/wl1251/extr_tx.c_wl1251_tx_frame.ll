; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i64, i32, i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.sk_buff*)* @wl1251_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_tx_frame(%struct.wl1251* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %18 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %92

25:                                               ; preds = %16
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %33 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @wl1251_acx_default_key(%struct.wl1251* %41, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %92

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %52 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %62 = call i32 @enable_tx_for_packet_injection(%struct.wl1251* %61)
  br label %63

63:                                               ; preds = %60, %55, %50
  %64 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %65 = call i32 @wl1251_tx_path_status(%struct.wl1251* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %92

70:                                               ; preds = %63
  %71 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %74 = call i32 @wl1251_tx_fill_hdr(%struct.wl1251* %71, %struct.sk_buff* %72, %struct.ieee80211_tx_info* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %92

79:                                               ; preds = %70
  %80 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %83 = call i32 @wl1251_tx_send_packet(%struct.wl1251* %80, %struct.sk_buff* %81, %struct.ieee80211_tx_info* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %79
  %89 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %90 = call i32 @wl1251_tx_trigger(%struct.wl1251* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %86, %77, %68, %46, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1251_acx_default_key(%struct.wl1251*, i64) #1

declare dso_local i32 @enable_tx_for_packet_injection(%struct.wl1251*) #1

declare dso_local i32 @wl1251_tx_path_status(%struct.wl1251*) #1

declare dso_local i32 @wl1251_tx_fill_hdr(%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @wl1251_tx_send_packet(%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @wl1251_tx_trigger(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
