; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.p80211_rxmeta = type { i32, %struct.wlandevice* }
%struct.p80211_frmmeta = type { %struct.p80211_rxmeta*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: RXmeta already attached!\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@P80211_FRMMETA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p80211skb_rxmeta_attach(%struct.wlandevice* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p80211_rxmeta*, align 8
  %7 = alloca %struct.p80211_frmmeta*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i64 @p80211skb_rxmeta(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %16 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_err(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %5, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.p80211_rxmeta* @kzalloc(i32 16, i32 %20)
  store %struct.p80211_rxmeta* %21, %struct.p80211_rxmeta** %6, align 8
  %22 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %23 = icmp ne %struct.p80211_rxmeta* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %27 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %28 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %27, i32 0, i32 1
  store %struct.wlandevice* %26, %struct.wlandevice** %28, align 8
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %31 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memset(i64 %34, i32 0, i32 16)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.p80211_frmmeta*
  store %struct.p80211_frmmeta* %39, %struct.p80211_frmmeta** %7, align 8
  %40 = load i32, i32* @P80211_FRMMETA_MAGIC, align 4
  %41 = load %struct.p80211_frmmeta*, %struct.p80211_frmmeta** %7, align 8
  %42 = getelementptr inbounds %struct.p80211_frmmeta, %struct.p80211_frmmeta* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %44 = load %struct.p80211_frmmeta*, %struct.p80211_frmmeta** %7, align 8
  %45 = getelementptr inbounds %struct.p80211_frmmeta, %struct.p80211_frmmeta* %44, i32 0, i32 0
  store %struct.p80211_rxmeta* %43, %struct.p80211_rxmeta** %45, align 8
  br label %46

46:                                               ; preds = %25, %24, %11
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @p80211skb_rxmeta(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local %struct.p80211_rxmeta* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
