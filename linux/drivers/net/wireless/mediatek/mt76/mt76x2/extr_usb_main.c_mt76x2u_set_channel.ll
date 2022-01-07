; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@MT_CH_IDLE = common dso_local global i32 0, align 4
@MT_CH_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.cfg80211_chan_def*)* @mt76x2u_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2u_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 1
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = call i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev* %9, i32 0)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @MT76_RESET, align 4
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %15, i32* %18)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %20, i32 0, i32 0
  %22 = call i32 @mt76_set_channel(%struct.TYPE_3__* %21)
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = call i32 @mt76x2_mac_stop(%struct.mt76x02_dev* %23, i32 0)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %27 = call i32 @mt76x2u_phy_set_channel(%struct.mt76x02_dev* %25, %struct.cfg80211_chan_def* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = load i32, i32* @MT_CH_IDLE, align 4
  %30 = call i32 @mt76_rr(%struct.mt76x02_dev* %28, i32 %29)
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = load i32, i32* @MT_CH_BUSY, align 4
  %33 = call i32 @mt76_rr(%struct.mt76x02_dev* %31, i32 %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = call i32 @mt76x2_mac_resume(%struct.mt76x02_dev* %34)
  %36 = load i32, i32* @MT76_RESET, align 4
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @clear_bit(i32 %36, i32* %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %46 = call i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev* %45, i32 1)
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %47, i32 0, i32 0
  %49 = call i32 @mt76_txq_schedule_all(%struct.TYPE_3__* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76_set_channel(%struct.TYPE_3__*) #1

declare dso_local i32 @mt76x2_mac_stop(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2u_phy_set_channel(%struct.mt76x02_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_mac_resume(%struct.mt76x02_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mt76_txq_schedule_all(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
