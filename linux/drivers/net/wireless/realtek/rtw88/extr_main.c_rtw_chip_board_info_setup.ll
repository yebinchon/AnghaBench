; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_board_info_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_board_info_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i32 }
%struct.rtw_rfe_def = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_chip_board_info_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_chip_board_info_setup(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_hal*, align 8
  %5 = alloca %struct.rtw_rfe_def*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_hal* %7, %struct.rtw_hal** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = call %struct.rtw_rfe_def* @rtw_get_rfe_def(%struct.rtw_dev* %8)
  store %struct.rtw_rfe_def* %9, %struct.rtw_rfe_def** %5, align 8
  %10 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %5, align 8
  %11 = icmp ne %struct.rtw_rfe_def* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = call i32 @rtw_phy_setup_phy_cond(%struct.rtw_dev* %16, i32 0)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = call i32 @rtw_phy_init_tx_power(%struct.rtw_dev* %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %5, align 8
  %22 = getelementptr inbounds %struct.rtw_rfe_def, %struct.rtw_rfe_def* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rtw_load_table(%struct.rtw_dev* %20, i32 %23)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %26 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_rfe_def, %struct.rtw_rfe_def* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rtw_load_table(%struct.rtw_dev* %25, i32 %28)
  %30 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %31 = call i32 @rtw_phy_tx_power_by_rate_config(%struct.rtw_hal* %30)
  %32 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %33 = call i32 @rtw_phy_tx_power_limit_config(%struct.rtw_hal* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.rtw_rfe_def* @rtw_get_rfe_def(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_phy_setup_phy_cond(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_phy_init_tx_power(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_load_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_phy_tx_power_by_rate_config(%struct.rtw_hal*) #1

declare dso_local i32 @rtw_phy_tx_power_limit_config(%struct.rtw_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
