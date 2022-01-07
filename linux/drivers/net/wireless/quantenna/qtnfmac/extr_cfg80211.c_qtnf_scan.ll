; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32 }
%struct.qtnf_wmac = type { i32, %struct.TYPE_2__*, i32, %struct.cfg80211_scan_request* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"MAC%u: failed to start scan\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MAC%u: scan started\0A\00", align 1
@QTNF_SCAN_TIMEOUT_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @qtnf_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %7)
  store %struct.qtnf_wmac* %8, %struct.qtnf_wmac** %5, align 8
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %10 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %9, i32 0, i32 0
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %14 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %13, i32 0, i32 3
  store %struct.cfg80211_scan_request* %12, %struct.cfg80211_scan_request** %14, align 8
  %15 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %16 = call i32 @qtnf_cmd_send_scan(%struct.qtnf_wmac* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %21 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %25 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %24, i32 0, i32 3
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %25, align 8
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %28 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %32 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %37 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %36, i32 0, i32 0
  %38 = load i32, i32* @QTNF_SCAN_TIMEOUT_SEC, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @queue_delayed_work(i32 %35, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %26, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @qtnf_cmd_send_scan(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
