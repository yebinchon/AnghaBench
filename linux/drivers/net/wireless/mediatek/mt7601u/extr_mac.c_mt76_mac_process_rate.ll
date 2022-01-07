; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i32, i32, i32, i32 }

@MT_RXWI_RATE_MCS = common dso_local global i32 0, align 4
@MT_RXWI_RATE_PHY = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_HT_GF = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@MT_RXWI_RATE_SGI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@MT_RXWI_RATE_STBC = common dso_local global i32 0, align 4
@RX_ENC_FLAG_STBC_SHIFT = common dso_local global i32 0, align 4
@MT_RXWI_RATE_BW = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_status*, i32)* @mt76_mac_process_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_mac_process_rate(%struct.ieee80211_rx_status* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_rx_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_rx_status* %0, %struct.ieee80211_rx_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MT_RXWI_RATE_MCS, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @FIELD_GET(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MT_RXWI_RATE_PHY, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @FIELD_GET(i32 %9, i32 %10)
  switch i32 %11, label %60 [
    i32 128, label %12
    i32 131, label %25
    i32 129, label %47
    i32 130, label %53
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 8
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 8
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 8
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %94

47:                                               ; preds = %2
  %48 = load i32, i32* @RX_ENC_FLAG_HT_GF, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %2, %47
  %54 = load i32, i32* @RX_ENC_HT, align 4
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %62

60:                                               ; preds = %2
  %61 = call i32 @WARN_ON(i32 1)
  br label %94

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @MT_RXWI_RATE_SGI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %69 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MT_RXWI_RATE_STBC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %80 = shl i32 1, %79
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @MT_RXWI_RATE_BW, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @RATE_INFO_BW_40, align 4
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %19, %43, %60, %90, %85
  ret void
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
