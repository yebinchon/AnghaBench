; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_txpwr_lmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_txpwr_lmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_table = type { i32, %struct.rtw_txpwr_lmt_cfg_pair* }
%struct.rtw_txpwr_lmt_cfg_pair = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_parse_tbl_txpwr_lmt(%struct.rtw_dev* %0, %struct.rtw_table* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_table*, align 8
  %5 = alloca %struct.rtw_txpwr_lmt_cfg_pair*, align 8
  %6 = alloca %struct.rtw_txpwr_lmt_cfg_pair*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_table* %1, %struct.rtw_table** %4, align 8
  %7 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %8 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %7, i32 0, i32 1
  %9 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %8, align 8
  store %struct.rtw_txpwr_lmt_cfg_pair* %9, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %10 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %11 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %10, i64 %14
  store %struct.rtw_txpwr_lmt_cfg_pair* %15, %struct.rtw_txpwr_lmt_cfg_pair** %6, align 8
  br label %16

16:                                               ; preds = %41, %2
  %17 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %18 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %6, align 8
  %19 = icmp ult %struct.rtw_txpwr_lmt_cfg_pair* %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %26 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %29 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %32 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %35 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %38 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rtw_phy_set_tx_power_limit(%struct.rtw_dev* %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %20
  %42 = load %struct.rtw_txpwr_lmt_cfg_pair*, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  %43 = getelementptr inbounds %struct.rtw_txpwr_lmt_cfg_pair, %struct.rtw_txpwr_lmt_cfg_pair* %42, i32 1
  store %struct.rtw_txpwr_lmt_cfg_pair* %43, %struct.rtw_txpwr_lmt_cfg_pair** %5, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = call i32 @rtw_xref_txpwr_lmt(%struct.rtw_dev* %45)
  ret void
}

declare dso_local i32 @rtw_phy_set_tx_power_limit(%struct.rtw_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_xref_txpwr_lmt(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
