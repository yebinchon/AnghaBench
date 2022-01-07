; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_parse_tbl_dpk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_parse_tbl_dpk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_table = type { i32, %struct.dpk_cfg_pair* }
%struct.dpk_cfg_pair = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw8822c_parse_tbl_dpk(%struct.rtw_dev* %0, %struct.rtw_table* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_table*, align 8
  %5 = alloca %struct.dpk_cfg_pair*, align 8
  %6 = alloca %struct.dpk_cfg_pair*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_table* %1, %struct.rtw_table** %4, align 8
  %7 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %8 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %7, i32 0, i32 1
  %9 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %8, align 8
  store %struct.dpk_cfg_pair* %9, %struct.dpk_cfg_pair** %5, align 8
  %10 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %11 = load %struct.rtw_table*, %struct.rtw_table** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_table, %struct.rtw_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dpk_cfg_pair, %struct.dpk_cfg_pair* %10, i64 %15
  store %struct.dpk_cfg_pair* %16, %struct.dpk_cfg_pair** %6, align 8
  %17 = call i32 @BUILD_BUG_ON(i32 0)
  br label %18

18:                                               ; preds = %34, %2
  %19 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %20 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %6, align 8
  %21 = icmp ult %struct.dpk_cfg_pair* %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %25 = getelementptr inbounds %struct.dpk_cfg_pair, %struct.dpk_cfg_pair* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %28 = getelementptr inbounds %struct.dpk_cfg_pair, %struct.dpk_cfg_pair* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %31 = getelementptr inbounds %struct.dpk_cfg_pair, %struct.dpk_cfg_pair* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtw_write32_mask(%struct.rtw_dev* %23, i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load %struct.dpk_cfg_pair*, %struct.dpk_cfg_pair** %5, align 8
  %36 = getelementptr inbounds %struct.dpk_cfg_pair, %struct.dpk_cfg_pair* %35, i32 1
  store %struct.dpk_cfg_pair* %36, %struct.dpk_cfg_pair** %5, align 8
  br label %18

37:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
