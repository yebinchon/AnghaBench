; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_main.c_mt76x0_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_main.c_mt76x0_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@MT_CH_IDLE = common dso_local global i32 0, align 4
@MT_CH_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.cfg80211_chan_def*)* @mt76x0_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 2
  %7 = call i32 @cancel_delayed_work_sync(i32* %6)
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = call i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev* %8, i32 0)
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = call i64 @mt76_is_mmio(%struct.mt76x02_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @tasklet_disable(i32* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %19, i32 0, i32 0
  %21 = call i32 @mt76_set_channel(i32* %20)
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %24 = call i32 @mt76x0_phy_set_channel(%struct.mt76x02_dev* %22, %struct.cfg80211_chan_def* %23)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = load i32, i32* @MT_CH_IDLE, align 4
  %27 = call i32 @mt76_rr(%struct.mt76x02_dev* %25, i32 %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = load i32, i32* @MT_CH_BUSY, align 4
  %30 = call i32 @mt76_rr(%struct.mt76x02_dev* %28, i32 %29)
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = call i32 @mt76x02_edcca_init(%struct.mt76x02_dev* %31)
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = call i64 @mt76_is_mmio(%struct.mt76x02_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %38 = call i32 @mt76x02_dfs_init_params(%struct.mt76x02_dev* %37)
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @tasklet_enable(i32* %41)
  br label %43

43:                                               ; preds = %36, %18
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = call i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev* %44, i32 1)
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %46, i32 0, i32 0
  %48 = call i32 @mt76_txq_schedule_all(i32* %47)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mt76x02_pre_tbtt_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i64 @mt76_is_mmio(%struct.mt76x02_dev*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @mt76_set_channel(i32*) #1

declare dso_local i32 @mt76x0_phy_set_channel(%struct.mt76x02_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_edcca_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_init_params(%struct.mt76x02_dev*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @mt76_txq_schedule_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
