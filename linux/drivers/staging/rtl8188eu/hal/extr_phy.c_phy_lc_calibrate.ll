; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_lc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_lc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_AC = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @phy_lc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_lc_calibrate(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call i32 @usb_read8(%struct.adapter* %9, i32 3331)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 112
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 143
  %18 = call i32 @usb_write8(%struct.adapter* %15, i32 3331, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = load i32, i32* @REG_TXPAUSE, align 4
  %22 = call i32 @usb_write8(%struct.adapter* %20, i32 %21, i32 255)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 112
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i32, i32* @RF_PATH_A, align 4
  %30 = load i32, i32* @RF_AC, align 4
  %31 = load i32, i32* @bMask12Bits, align 4
  %32 = call i32 @rtw_hal_read_rfreg(%struct.adapter* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load i32, i32* @RF_PATH_B, align 4
  %38 = load i32, i32* @RF_AC, align 4
  %39 = load i32, i32* @bMask12Bits, align 4
  %40 = call i32 @rtw_hal_read_rfreg(%struct.adapter* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load i32, i32* @RF_PATH_A, align 4
  %44 = load i32, i32* @RF_AC, align 4
  %45 = load i32, i32* @bMask12Bits, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 589823
  %48 = or i32 %47, 65536
  %49 = call i32 @phy_set_rf_reg(%struct.adapter* %42, i32 %43, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load i32, i32* @RF_PATH_B, align 4
  %55 = load i32, i32* @RF_AC, align 4
  %56 = load i32, i32* @bMask12Bits, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 589823
  %59 = or i32 %58, 65536
  %60 = call i32 @phy_set_rf_reg(%struct.adapter* %53, i32 %54, i32 %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %52, %41
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = load i32, i32* @RF_PATH_A, align 4
  %65 = load i32, i32* @RF_CHNLBW, align 4
  %66 = load i32, i32* @bMask12Bits, align 4
  %67 = call i32 @rtw_hal_read_rfreg(%struct.adapter* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = load i32, i32* @RF_PATH_A, align 4
  %70 = load i32, i32* @RF_CHNLBW, align 4
  %71 = load i32, i32* @bMask12Bits, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 32768
  %74 = call i32 @phy_set_rf_reg(%struct.adapter* %68, i32 %69, i32 %70, i32 %71, i32 %73)
  %75 = call i32 @msleep(i32 100)
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 112
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %62
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @usb_write8(%struct.adapter* %80, i32 3331, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = load i32, i32* @RF_PATH_A, align 4
  %85 = load i32, i32* @RF_AC, align 4
  %86 = load i32, i32* @bMask12Bits, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @phy_set_rf_reg(%struct.adapter* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = load i32, i32* @RF_PATH_B, align 4
  %94 = load i32, i32* @RF_AC, align 4
  %95 = load i32, i32* @bMask12Bits, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @phy_set_rf_reg(%struct.adapter* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %79
  br label %103

99:                                               ; preds = %62
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = load i32, i32* @REG_TXPAUSE, align 4
  %102 = call i32 @usb_write8(%struct.adapter* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %99, %98
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_hal_read_rfreg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @phy_set_rf_reg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
