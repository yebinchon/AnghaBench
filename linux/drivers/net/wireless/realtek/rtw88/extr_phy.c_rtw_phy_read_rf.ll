; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_read_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_read_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_hal }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_hal = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unsupported rf path (%d)\0A\00", align 1
@INV_RF_DATA = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_phy_read_rf(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtw_hal*, align 8
  %11 = alloca %struct.rtw_chip_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 1
  store %struct.rtw_hal* %16, %struct.rtw_hal** %10, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  %19 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %18, align 8
  store %struct.rtw_chip_info* %19, %struct.rtw_chip_info** %11, align 8
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %11, align 8
  %21 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.rtw_hal*, %struct.rtw_hal** %10, align 8
  %25 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @rtw_err(%struct.rtw_dev* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @INV_RF_DATA, align 4
  store i32 %32, i32* %5, align 4
  br label %52

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 2
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @RFREG_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rtw_read32_mask(%struct.rtw_dev* %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %33, %28
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*, i32) #1

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
