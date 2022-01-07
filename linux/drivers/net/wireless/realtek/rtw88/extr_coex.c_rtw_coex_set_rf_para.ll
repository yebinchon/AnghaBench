; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_rf_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_rf_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }
%struct.coex_rf_para = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.coex_rf_para*)* @rtw_coex_set_rf_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_set_rf_para(%struct.rtw_dev* %0, %struct.coex_rf_para* byval(%struct.coex_rf_para) align 8 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_coex*, align 8
  %5 = alloca %struct.rtw_coex_stat*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %4, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 1
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 3, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %15, %2
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = getelementptr inbounds %struct.coex_rf_para, %struct.coex_rf_para* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rtw_coex_set_wl_tx_power(%struct.rtw_dev* %22, i32 %24)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = getelementptr inbounds %struct.coex_rf_para, %struct.coex_rf_para* %1, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @rtw_coex_set_bt_tx_power(%struct.rtw_dev* %26, i64 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = getelementptr inbounds %struct.coex_rf_para, %struct.coex_rf_para* %1, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtw_coex_set_wl_rx_gain(%struct.rtw_dev* %33, i32 %35)
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = getelementptr inbounds %struct.coex_rf_para, %struct.coex_rf_para* %1, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rtw_coex_set_bt_rx_gain(%struct.rtw_dev* %37, i32 %39)
  ret void
}

declare dso_local i32 @rtw_coex_set_wl_tx_power(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_set_bt_tx_power(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_coex_set_wl_rx_gain(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_set_bt_rx_gain(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
