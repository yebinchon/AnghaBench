; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_write_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_write_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_hal }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_hal = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unsupported rf path (%d)\0A\00", align 1
@RFREG_MASK = common dso_local global i32 0, align 4
@RF_CFGCH = common dso_local global i32 0, align 4
@REG_RSV_CTRL = common dso_local global i32 0, align 4
@BITS_RFC_DIRECT = common dso_local global i32 0, align 4
@DISABLE_PI = common dso_local global i32 0, align 4
@REG_WLRF1 = common dso_local global i32 0, align 4
@ENABLE_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_phy_write_rf_reg(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtw_hal*, align 8
  %13 = alloca %struct.rtw_chip_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 1
  store %struct.rtw_hal* %17, %struct.rtw_hal** %12, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 0
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %19, align 8
  store %struct.rtw_chip_info* %20, %struct.rtw_chip_info** %13, align 8
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %13, align 8
  %22 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.rtw_hal*, %struct.rtw_hal** %12, align 8
  %26 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rtw_err(%struct.rtw_dev* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %6, align 4
  br label %83

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 2
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* @RFREG_MASK, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RF_CFGCH, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %33
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %52 = load i32, i32* @REG_RSV_CTRL, align 4
  %53 = load i32, i32* @BITS_RFC_DIRECT, align 4
  %54 = load i32, i32* @DISABLE_PI, align 4
  %55 = call i32 @rtw_write32_mask(%struct.rtw_dev* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %57 = load i32, i32* @REG_WLRF1, align 4
  %58 = load i32, i32* @BITS_RFC_DIRECT, align 4
  %59 = load i32, i32* @DISABLE_PI, align 4
  %60 = call i32 @rtw_write32_mask(%struct.rtw_dev* %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %33
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @rtw_write32_mask(%struct.rtw_dev* %62, i32 %63, i32 %64, i32 %65)
  %67 = call i32 @udelay(i32 1)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RF_CFGCH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %61
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %73 = load i32, i32* @REG_RSV_CTRL, align 4
  %74 = load i32, i32* @BITS_RFC_DIRECT, align 4
  %75 = load i32, i32* @ENABLE_PI, align 4
  %76 = call i32 @rtw_write32_mask(%struct.rtw_dev* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %78 = load i32, i32* @REG_WLRF1, align 4
  %79 = load i32, i32* @BITS_RFC_DIRECT, align 4
  %80 = load i32, i32* @ENABLE_PI, align 4
  %81 = call i32 @rtw_write32_mask(%struct.rtw_dev* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %61
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %29
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
