; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wsm_scan_complete = type { i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_scan_complete_cb(%struct.cw1200_common* %0, %struct.wsm_scan_complete* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_scan_complete*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_scan_complete* %1, %struct.wsm_scan_complete** %4, align 8
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i64 @cancel_delayed_work_sync(i32* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @queue_delayed_work(i32 %23, i32* %26, i32 0)
  br label %28

28:                                               ; preds = %10, %17, %11
  ret void
}

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
