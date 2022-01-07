; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_wl_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_wl_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i32 }

@RF_PATH_A = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_coex_cfg_wl_rx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_coex_cfg_wl_rx_gain(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 0
  store %struct.rtw_coex_dm* %10, %struct.rtw_coex_dm** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %13 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load i32, i32* @RF_PATH_A, align 4
  %28 = call i32 @rtw_write_rf(%struct.rtw_dev* %26, i32 %27, i32 222, i32 1048575, i32 34)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = load i32, i32* @RF_PATH_A, align 4
  %31 = call i32 @rtw_write_rf(%struct.rtw_dev* %29, i32 %30, i32 29, i32 1048575, i32 54)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* @RF_PATH_B, align 4
  %34 = call i32 @rtw_write_rf(%struct.rtw_dev* %32, i32 %33, i32 222, i32 1048575, i32 34)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %36 = load i32, i32* @RF_PATH_B, align 4
  %37 = call i32 @rtw_write_rf(%struct.rtw_dev* %35, i32 %36, i32 29, i32 1048575, i32 54)
  br label %48

38:                                               ; preds = %17
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load i32, i32* @RF_PATH_A, align 4
  %41 = call i32 @rtw_write_rf(%struct.rtw_dev* %39, i32 %40, i32 222, i32 1048575, i32 32)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @RF_PATH_A, align 4
  %44 = call i32 @rtw_write_rf(%struct.rtw_dev* %42, i32 %43, i32 29, i32 1048575, i32 0)
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* @RF_PATH_B, align 4
  %47 = call i32 @rtw_write_rf(%struct.rtw_dev* %45, i32 %46, i32 29, i32 1048575, i32 0)
  br label %48

48:                                               ; preds = %16, %38, %25
  ret void
}

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
