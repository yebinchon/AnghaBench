; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chandef_cfg2q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_chandef_cfg2q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.qlink_chandef = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlink_chandef_cfg2q(%struct.cfg80211_chan_def* %0, %struct.qlink_chandef* %1) #0 {
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca %struct.qlink_chandef*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  store %struct.qlink_chandef* %1, %struct.qlink_chandef** %4, align 8
  %6 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %7 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 3
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  store %struct.ieee80211_channel* %8, %struct.ieee80211_channel** %5, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %14 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %21 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %28 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %35 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %41 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @qlink_chanwidth_nl_to_qlink(i32 %44)
  %46 = load %struct.qlink_chandef*, %struct.qlink_chandef** %4, align 8
  %47 = getelementptr inbounds %struct.qlink_chandef, %struct.qlink_chandef* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlink_chanwidth_nl_to_qlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
