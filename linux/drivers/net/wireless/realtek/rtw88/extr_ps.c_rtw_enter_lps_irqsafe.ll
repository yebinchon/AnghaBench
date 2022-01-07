; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_lps_irqsafe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_lps_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, i32, %struct.rtw_lps_conf }
%struct.rtw_lps_conf = type { %struct.rtw_vif*, i32 }
%struct.rtw_vif = type { i32 }

@RTW_MODE_LPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_enter_lps_irqsafe(%struct.rtw_dev* %0, %struct.rtw_vif* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_vif*, align 8
  %5 = alloca %struct.rtw_lps_conf*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_vif* %1, %struct.rtw_vif** %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 2
  store %struct.rtw_lps_conf* %7, %struct.rtw_lps_conf** %5, align 8
  %8 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @RTW_MODE_LPS, align 4
  %15 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %5, align 8
  %16 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %18 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %18, i32 0, i32 0
  store %struct.rtw_vif* %17, %struct.rtw_vif** %19, align 8
  %20 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %25, i32 0, i32 0
  %27 = call i32 @ieee80211_queue_delayed_work(i32 %24, i32* %26, i32 0)
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
