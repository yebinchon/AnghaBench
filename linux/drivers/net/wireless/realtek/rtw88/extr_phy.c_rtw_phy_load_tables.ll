; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_load_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_load_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info* }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_chip_info = type { %struct.rtw_table**, %struct.rtw_table*, %struct.rtw_table*, %struct.rtw_table* }
%struct.rtw_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_load_tables(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_table*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 1
  %8 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  store %struct.rtw_chip_info* %8, %struct.rtw_chip_info** %3, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %10, i32 0, i32 3
  %12 = load %struct.rtw_table*, %struct.rtw_table** %11, align 8
  %13 = call i32 @rtw_load_table(%struct.rtw_dev* %9, %struct.rtw_table* %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %15, i32 0, i32 2
  %17 = load %struct.rtw_table*, %struct.rtw_table** %16, align 8
  %18 = call i32 @rtw_load_table(%struct.rtw_dev* %14, %struct.rtw_table* %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %20, i32 0, i32 1
  %22 = load %struct.rtw_table*, %struct.rtw_table** %21, align 8
  %23 = call i32 @rtw_load_table(%struct.rtw_dev* %19, %struct.rtw_table* %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %25 = call i32 @rtw_load_rfk_table(%struct.rtw_dev* %24)
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %35 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %34, i32 0, i32 0
  %36 = load %struct.rtw_table**, %struct.rtw_table*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.rtw_table*, %struct.rtw_table** %36, i64 %37
  %39 = load %struct.rtw_table*, %struct.rtw_table** %38, align 8
  store %struct.rtw_table* %39, %struct.rtw_table** %5, align 8
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load %struct.rtw_table*, %struct.rtw_table** %5, align 8
  %42 = call i32 @rtw_load_table(%struct.rtw_dev* %40, %struct.rtw_table* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %26

46:                                               ; preds = %26
  ret void
}

declare dso_local i32 @rtw_load_table(%struct.rtw_dev*, %struct.rtw_table*) #1

declare dso_local i32 @rtw_load_rfk_table(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
