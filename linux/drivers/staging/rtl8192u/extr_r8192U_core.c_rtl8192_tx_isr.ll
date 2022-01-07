; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_tx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_tx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_8__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (%struct.sk_buff*, %struct.net_device*)*, i32*, i32, %struct.TYPE_7__, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cb_desc = type { i64 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rtl8192_tx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_tx_isr(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.cb_desc*, align 8
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  store %struct.r8192_priv* null, %struct.r8192_priv** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.net_device**
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to %struct.cb_desc*
  store %struct.cb_desc* %26, %struct.cb_desc** %6, align 8
  %27 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %28 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %30)
  store %struct.r8192_priv* %31, %struct.r8192_priv** %5, align 8
  %32 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %33 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TXCMD_QUEUE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %15
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netif_trans_update(%struct.net_device* %43)
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %59, %64
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %65
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  br label %81

73:                                               ; preds = %37
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %42
  br label %82

82:                                               ; preds = %81, %15
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  %85 = load %struct.urb*, %struct.urb** %2, align 8
  %86 = call i32 @usb_free_urb(%struct.urb* %85)
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i32 @atomic_dec(i32* %91)
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @BEACON_QUEUE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %82
  %97 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %98 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i64 @skb_queue_len(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %96
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %106
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call %struct.sk_buff* @skb_dequeue(i32* %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %126 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %128, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = load %struct.net_device*, %struct.net_device** %4, align 8
  %132 = call i32 %129(%struct.sk_buff* %130, %struct.net_device* %131)
  br label %133

133:                                              ; preds = %124, %113
  br label %135

134:                                              ; preds = %106, %96
  br label %135

135:                                              ; preds = %14, %133, %134, %82
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
