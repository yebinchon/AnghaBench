; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info, %struct.rtw_chip_info* }
%struct.rtw_dm_info = type { i64*, i64, i64* }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_dm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  %9 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %8, align 8
  store %struct.rtw_chip_info* %9, %struct.rtw_chip_info** %3, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  store %struct.rtw_dm_info* %11, %struct.rtw_dm_info** %4, align 8
  %12 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %31 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %35 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %49 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @rtw_read32_mask(%struct.rtw_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %59 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %63 = call i32 @rtw_phy_cck_pd_init(%struct.rtw_dev* %62)
  ret void
}

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_phy_cck_pd_init(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
