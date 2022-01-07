; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_power_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_power_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_lps_conf, %struct.rtw_coex }
%struct.rtw_lps_conf = type { i32, %struct.rtw_vif* }
%struct.rtw_vif = type { i32 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw_coex_power_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_power_save_state(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_lps_conf*, align 8
  %10 = alloca %struct.rtw_vif*, align 8
  %11 = alloca %struct.rtw_coex*, align 8
  %12 = alloca %struct.rtw_coex_stat*, align 8
  %13 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_lps_conf* %15, %struct.rtw_lps_conf** %9, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 1
  store %struct.rtw_coex* %17, %struct.rtw_coex** %11, align 8
  %18 = load %struct.rtw_coex*, %struct.rtw_coex** %11, align 8
  %19 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %18, i32 0, i32 0
  store %struct.rtw_coex_stat* %19, %struct.rtw_coex_stat** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %65 [
    i32 128, label %25
    i32 129, label %42
  ]

25:                                               ; preds = %4
  %26 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %12, align 8
  %27 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %9, align 8
  %29 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %28, i32 0, i32 1
  %30 = load %struct.rtw_vif*, %struct.rtw_vif** %29, align 8
  store %struct.rtw_vif* %30, %struct.rtw_vif** %10, align 8
  %31 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %32 = icmp ne %struct.rtw_vif* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %35 = call i32 @rtw_in_lps(%struct.rtw_dev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %39 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %40 = call i32 @rtw_leave_lps(%struct.rtw_dev* %38, %struct.rtw_vif* %39)
  br label %41

41:                                               ; preds = %37, %33, %25
  br label %66

42:                                               ; preds = %4
  %43 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %12, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = call i32 @rtw_fw_coex_tdma_type(%struct.rtw_dev* %48, i32 8, i32 0, i32 0, i32 0, i32 0)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %9, align 8
  %52 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %51, i32 0, i32 1
  %53 = load %struct.rtw_vif*, %struct.rtw_vif** %52, align 8
  store %struct.rtw_vif* %53, %struct.rtw_vif** %10, align 8
  %54 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %55 = icmp ne %struct.rtw_vif* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %58 = call i32 @rtw_in_lps(%struct.rtw_dev* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %62 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %63 = call i32 @rtw_leave_lps(%struct.rtw_dev* %61, %struct.rtw_vif* %62)
  br label %64

64:                                               ; preds = %60, %56, %50
  br label %66

65:                                               ; preds = %4
  br label %66

66:                                               ; preds = %65, %64, %41
  ret void
}

declare dso_local i32 @rtw_in_lps(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_leave_lps(%struct.rtw_dev*, %struct.rtw_vif*) #1

declare dso_local i32 @rtw_fw_coex_tdma_type(%struct.rtw_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
