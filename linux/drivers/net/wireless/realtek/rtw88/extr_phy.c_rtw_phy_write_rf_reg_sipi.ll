; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_write_rf_reg_sipi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_write_rf_reg_sipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_hal }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_hal = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unsupported rf path (%d)\0A\00", align 1
@RFREG_MASK = common dso_local global i32 0, align 4
@INV_RF_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Write fail, rf is disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_phy_write_rf_reg_sipi(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  store %struct.rtw_hal* %19, %struct.rtw_hal** %12, align 8
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 0
  %22 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %21, align 8
  store %struct.rtw_chip_info* %22, %struct.rtw_chip_info** %13, align 8
  %23 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %13, align 8
  %24 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.rtw_hal*, %struct.rtw_hal** %12, align 8
  %28 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (%struct.rtw_dev*, i8*, ...) @rtw_err(%struct.rtw_dev* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %6, align 4
  br label %83

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @RFREG_MASK, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RFREG_MASK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %35
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RFREG_MASK, align 4
  %49 = call i32 @rtw_phy_read_rf(%struct.rtw_dev* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @INV_RF_DATA, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %55 = call i32 (%struct.rtw_dev*, i8*, ...) @rtw_err(%struct.rtw_dev* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @__ffs(i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %17, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %56, %35
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 20
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 1048575
  %72 = or i32 %69, %71
  %73 = and i32 %72, 268435455
  store i32 %73, i32* %15, align 4
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @rtw_write32(%struct.rtw_dev* %74, i32 %79, i32 %80)
  %82 = call i32 @udelay(i32 13)
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %67, %53, %31
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*, ...) #1

declare dso_local i32 @rtw_phy_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
