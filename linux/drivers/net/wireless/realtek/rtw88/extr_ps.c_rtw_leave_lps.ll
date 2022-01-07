; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_leave_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_leave_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_lps_conf }
%struct.rtw_lps_conf = type { %struct.rtw_vif*, i32 }
%struct.rtw_vif = type { i32 }

@RTW_MODE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_leave_lps(%struct.rtw_dev* %0, %struct.rtw_vif* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_vif*, align 8
  %5 = alloca %struct.rtw_lps_conf*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_vif* %1, %struct.rtw_vif** %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_lps_conf* %7, %struct.rtw_lps_conf** %5, align 8
  %8 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %9 = icmp ne %struct.rtw_vif* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %32

21:                                               ; preds = %15
  %22 = load i32, i32* @RTW_MODE_ACTIVE, align 4
  %23 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %5, align 8
  %24 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %26 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %26, i32 0, i32 0
  store %struct.rtw_vif* %25, %struct.rtw_vif** %27, align 8
  %28 = load %struct.rtw_vif*, %struct.rtw_vif** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %31 = call i32 @rtw_leave_lps_core(%struct.rtw_dev* %30)
  br label %32

32:                                               ; preds = %21, %20, %14
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rtw_leave_lps_core(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
