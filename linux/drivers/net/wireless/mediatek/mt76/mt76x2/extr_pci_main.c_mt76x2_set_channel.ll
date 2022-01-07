; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_main.c_mt76x2_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_main.c_mt76x2_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@MT_CH_IDLE = common dso_local global i32 0, align 4
@MT_CH_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.cfg80211_chan_def*)* @mt76x2_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 2
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @tasklet_disable(i32* %11)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @tasklet_disable(i32* %15)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @MT76_RESET, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = call i32 @set_bit(i32 %21, i32* %24)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %26, i32 0, i32 0
  %28 = call i32 @mt76_set_channel(%struct.TYPE_5__* %27)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = call i32 @mt76x2_mac_stop(%struct.mt76x02_dev* %29, i32 1)
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %33 = call i32 @mt76x2_phy_set_channel(%struct.mt76x02_dev* %31, %struct.cfg80211_chan_def* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = load i32, i32* @MT_CH_IDLE, align 4
  %36 = call i32 @mt76_rr(%struct.mt76x02_dev* %34, i32 %35)
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %38 = load i32, i32* @MT_CH_BUSY, align 4
  %39 = call i32 @mt76_rr(%struct.mt76x02_dev* %37, i32 %38)
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %41 = call i32 @mt76x02_dfs_init_params(%struct.mt76x02_dev* %40)
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = call i32 @mt76x2_mac_resume(%struct.mt76x02_dev* %42)
  %44 = load i32, i32* @MT76_RESET, align 4
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = call i32 @clear_bit(i32 %44, i32* %47)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @tasklet_enable(i32* %55)
  %57 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @tasklet_enable(i32* %59)
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %61, i32 0, i32 0
  %63 = call i32 @mt76_txq_schedule_all(%struct.TYPE_5__* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76_set_channel(%struct.TYPE_5__*) #1

declare dso_local i32 @mt76x2_mac_stop(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_phy_set_channel(%struct.mt76x02_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_dfs_init_params(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_mac_resume(%struct.mt76x02_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @mt76_txq_schedule_all(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
