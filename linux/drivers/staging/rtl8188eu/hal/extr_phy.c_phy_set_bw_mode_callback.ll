; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_set_bw_mode_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_set_bw_mode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i32 }

@REG_BWOPMODE = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bRFMOD = common dso_local global i32 0, align 4
@rFPGA1_RFMOD = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKSideBand = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_set_bw_mode_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_set_bw_mode_callback(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  store %struct.hal_data_8188e* %8, %struct.hal_data_8188e** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %110

14:                                               ; preds = %1
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i64, i64* @REG_BWOPMODE, align 8
  %17 = call i32 @usb_read8(%struct.adapter* %15, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = load i64, i64* @REG_RRSR, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @usb_read8(%struct.adapter* %18, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %23 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %54 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %14
  %26 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i64, i64* @REG_BWOPMODE, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @usb_write8(%struct.adapter* %29, i64 %30, i32 %31)
  br label %55

33:                                               ; preds = %14
  %34 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i64, i64* @REG_BWOPMODE, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @usb_write8(%struct.adapter* %38, i64 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 144
  %44 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %45 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 5
  %48 = or i32 %43, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = load i64, i64* @REG_RRSR, align 8
  %51 = add nsw i64 %50, 2
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @usb_write8(%struct.adapter* %49, i64 %51, i32 %52)
  br label %55

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54, %33, %25
  %56 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %57 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %103 [
    i32 129, label %59
    i32 128, label %68
  ]

59:                                               ; preds = %55
  %60 = load %struct.adapter*, %struct.adapter** %2, align 8
  %61 = load i32, i32* @rFPGA0_RFMOD, align 4
  %62 = load i32, i32* @bRFMOD, align 4
  %63 = call i32 @phy_set_bb_reg(%struct.adapter* %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = load i32, i32* @rFPGA1_RFMOD, align 4
  %66 = load i32, i32* @bRFMOD, align 4
  %67 = call i32 @phy_set_bb_reg(%struct.adapter* %64, i32 %65, i32 %66, i32 0)
  br label %104

68:                                               ; preds = %55
  %69 = load %struct.adapter*, %struct.adapter** %2, align 8
  %70 = load i32, i32* @rFPGA0_RFMOD, align 4
  %71 = load i32, i32* @bRFMOD, align 4
  %72 = call i32 @phy_set_bb_reg(%struct.adapter* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = load i32, i32* @rFPGA1_RFMOD, align 4
  %75 = load i32, i32* @bRFMOD, align 4
  %76 = call i32 @phy_set_bb_reg(%struct.adapter* %73, i32 %74, i32 %75, i32 1)
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = load i32, i32* @rCCK0_System, align 4
  %79 = load i32, i32* @bCCKSideBand, align 4
  %80 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %81 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 1
  %84 = call i32 @phy_set_bb_reg(%struct.adapter* %77, i32 %78, i32 %79, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = load i32, i32* @rOFDM1_LSTF, align 4
  %87 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %88 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @phy_set_bb_reg(%struct.adapter* %85, i32 %86, i32 3072, i32 %89)
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = call i32 @BIT(i32 26)
  %93 = call i32 @BIT(i32 27)
  %94 = or i32 %92, %93
  %95 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %96 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 2, i32 1
  %102 = call i32 @phy_set_bb_reg(%struct.adapter* %91, i32 2072, i32 %94, i32 %101)
  br label %104

103:                                              ; preds = %55
  br label %104

104:                                              ; preds = %103, %68, %59
  %105 = load %struct.adapter*, %struct.adapter** %2, align 8
  %106 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %107 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtl88eu_phy_rf6052_set_bandwidth(%struct.adapter* %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %13
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88eu_phy_rf6052_set_bandwidth(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
