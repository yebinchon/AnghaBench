; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chandef_q2cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chandef_q2cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.qlink_chandef = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_chan_def = type { i32, i8*, i8*, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlink_chandef_q2cfg(%struct.wiphy* %0, %struct.qlink_chandef* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.qlink_chandef*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.qlink_chandef* %1, %struct.qlink_chandef** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = load %struct.qlink_chandef*, %struct.qlink_chandef** %5, align 8
  %10 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %8, i8* %13)
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %7, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 3
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %17, align 8
  %18 = load %struct.qlink_chandef*, %struct.qlink_chandef** %5, align 8
  %19 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le16_to_cpu(i32 %20)
  %22 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.qlink_chandef*, %struct.qlink_chandef** %5, align 8
  %25 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.qlink_chandef*, %struct.qlink_chandef** %5, align 8
  %31 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qlink_chanwidth_to_nl(i32 %32)
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @qlink_chanwidth_to_nl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
