; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.p80211_rxmeta = type { i32 }
%struct.p80211_frmmeta = type { %struct.p80211_rxmeta* }

@.str = private unnamed_addr constant [21 x i8] c"Called w/ null skb.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Called w/ bad frmmeta magic.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Called w/ bad rxmeta ptr.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p80211skb_rxmeta_detach(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.p80211_rxmeta*, align 8
  %4 = alloca %struct.p80211_frmmeta*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = icmp ne %struct.sk_buff* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.p80211_frmmeta* @p80211skb_frmmeta(%struct.sk_buff* %10)
  store %struct.p80211_frmmeta* %11, %struct.p80211_frmmeta** %4, align 8
  %12 = load %struct.p80211_frmmeta*, %struct.p80211_frmmeta** %4, align 8
  %13 = icmp ne %struct.p80211_frmmeta* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.p80211_frmmeta*, %struct.p80211_frmmeta** %4, align 8
  %18 = getelementptr inbounds %struct.p80211_frmmeta, %struct.p80211_frmmeta* %17, i32 0, i32 0
  %19 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %18, align 8
  store %struct.p80211_rxmeta* %19, %struct.p80211_rxmeta** %3, align 8
  %20 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %3, align 8
  %21 = icmp ne %struct.p80211_rxmeta* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %3, align 8
  %26 = call i32 @kfree(%struct.p80211_rxmeta* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  br label %31

31:                                               ; preds = %24, %22, %14, %7
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.p80211_frmmeta* @p80211skb_frmmeta(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.p80211_rxmeta*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
