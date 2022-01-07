; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_override_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_override_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qusb2_phy = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, %struct.qusb2_phy_cfg* }
%struct.qusb2_phy_cfg = type { i32* }

@QUSB2PHY_IMP_CTRL1 = common dso_local global i32 0, align 4
@IMP_RES_OFFSET_SHIFT = common dso_local global i32 0, align 4
@IMP_RES_OFFSET_MASK = common dso_local global i32 0, align 4
@QUSB2PHY_PORT_TUNE1 = common dso_local global i64 0, align 8
@HSTX_TRIM_SHIFT = common dso_local global i32 0, align 4
@HSTX_TRIM_MASK = common dso_local global i32 0, align 4
@PREEMPHASIS_EN_SHIFT = common dso_local global i32 0, align 4
@PREEMPHASIS_EN_MASK = common dso_local global i32 0, align 4
@QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT = common dso_local global i64 0, align 8
@PREEMPH_WIDTH_HALF_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qusb2_phy*)* @qusb2_phy_override_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qusb2_phy_override_phy_params(%struct.qusb2_phy* %0) #0 {
  %2 = alloca %struct.qusb2_phy*, align 8
  %3 = alloca %struct.qusb2_phy_cfg*, align 8
  store %struct.qusb2_phy* %0, %struct.qusb2_phy** %2, align 8
  %4 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %5 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %4, i32 0, i32 9
  %6 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %5, align 8
  store %struct.qusb2_phy_cfg* %6, %struct.qusb2_phy_cfg** %3, align 8
  %7 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %8 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %13 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QUSB2PHY_IMP_CTRL1, align 4
  %16 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %17 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IMP_RES_OFFSET_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @IMP_RES_OFFSET_MASK, align 4
  %22 = call i32 @qusb2_write_mask(i32 %14, i32 %15, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %25 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %30 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %3, align 8
  %33 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @QUSB2PHY_PORT_TUNE1, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %39 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HSTX_TRIM_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @HSTX_TRIM_MASK, align 4
  %44 = call i32 @qusb2_write_mask(i32 %31, i32 %37, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %23
  %46 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %47 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %52 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %3, align 8
  %55 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @QUSB2PHY_PORT_TUNE1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %61 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PREEMPHASIS_EN_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @PREEMPHASIS_EN_MASK, align 4
  %66 = call i32 @qusb2_write_mask(i32 %53, i32 %59, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %50, %45
  %68 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %69 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %74 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %80 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %3, align 8
  %83 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @QUSB2PHY_PORT_TUNE1, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PREEMPH_WIDTH_HALF_BIT, align 4
  %89 = call i32 @qusb2_setbits(i32 %81, i32 %87, i32 %88)
  br label %102

90:                                               ; preds = %72
  %91 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %92 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %3, align 8
  %95 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @QUSB2PHY_PORT_TUNE1, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PREEMPH_WIDTH_HALF_BIT, align 4
  %101 = call i32 @qusb2_clrbits(i32 %93, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %78
  br label %103

103:                                              ; preds = %102, %67
  ret void
}

declare dso_local i32 @qusb2_write_mask(i32, i32, i32, i32) #1

declare dso_local i32 @qusb2_setbits(i32, i32, i32) #1

declare dso_local i32 @qusb2_clrbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
