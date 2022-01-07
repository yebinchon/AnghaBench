; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rate_from_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rate_from_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skb_frame_desc = type { i32, i32 }

@TX_STA_FIFO_MCS = common dso_local global i32 0, align 4
@TX_STA_FIFO_PHYMODE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@TX_STA_FIFO_BW = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@TX_STA_FIFO_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skb_frame_desc*, i32, i32)* @rt2800_rate_from_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_rate_from_status(%struct.skb_frame_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.skb_frame_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skb_frame_desc* %0, %struct.skb_frame_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TX_STA_FIFO_MCS, align 4
  %11 = call i32 @rt2x00_get_field32(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TX_STA_FIFO_PHYMODE, align 4
  %14 = call i32 @rt2x00_get_field32(i32 %12, i32 %13)
  switch i32 %14, label %38 [
    i32 130, label %15
    i32 129, label %19
    i32 128, label %23
    i32 131, label %31
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %3, %15
  %20 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 8
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %3, %37, %30, %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TX_STA_FIFO_BW, align 4
  %41 = call i32 @rt2x00_get_field32(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TX_STA_FIFO_SGI, align 4
  %50 = call i32 @rt2x00_get_field32(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %59 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %62 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
