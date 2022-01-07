; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_bb_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_parse_tbl_bb_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_table = type { i32, %struct.phy_pg_cfg_pair* }
%struct.phy_pg_cfg_pair = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_parse_tbl_bb_pg(%struct.rtw_dev* %0, %struct.rtw_table* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_table*, align 8
  %5 = alloca %struct.phy_pg_cfg_pair*, align 8
  %6 = alloca %struct.phy_pg_cfg_pair*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_table* %1, %struct.rtw_table** %4, align 8
  %7 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %8 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %7, i32 0, i32 1
  %9 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %8, align 8
  store %struct.phy_pg_cfg_pair* %9, %struct.phy_pg_cfg_pair** %5, align 8
  %10 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %11 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 6
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %10, i64 %15
  store %struct.phy_pg_cfg_pair* %16, %struct.phy_pg_cfg_pair** %6, align 8
  %17 = call i32 @BUILD_BUG_ON(i32 0)
  br label %18

18:                                               ; preds = %55, %2
  %19 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %20 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %6, align 8
  %21 = icmp ult %struct.phy_pg_cfg_pair* %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %24 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 254
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %29 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 4094
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = call i32 @msleep(i32 50)
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %36 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %37 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %40 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %43 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %46 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %49 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %52 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rtw_phy_store_tx_power_by_rate(%struct.rtw_dev* %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %34, %32
  %56 = load %struct.phy_pg_cfg_pair*, %struct.phy_pg_cfg_pair** %5, align 8
  %57 = getelementptr inbounds %struct.phy_pg_cfg_pair, %struct.phy_pg_cfg_pair* %56, i32 1
  store %struct.phy_pg_cfg_pair* %57, %struct.phy_pg_cfg_pair** %5, align 8
  br label %18

58:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtw_phy_store_tx_power_by_rate(%struct.rtw_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
