; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_set_tune2_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_set_tune2_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qusb2_phy = type { i32, i32, %struct.qusb2_phy_cfg*, %struct.TYPE_2__* }
%struct.qusb2_phy_cfg = type { i32*, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to read a valid hs-tx trim value\0A\00", align 1
@QUSB2PHY_PORT_TUNE1 = common dso_local global i64 0, align 8
@HSTX_TRIM_SHIFT = common dso_local global i32 0, align 4
@HSTX_TRIM_MASK = common dso_local global i32 0, align 4
@QUSB2PHY_PORT_TUNE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qusb2_phy*)* @qusb2_phy_set_tune2_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qusb2_phy_set_tune2_param(%struct.qusb2_phy* %0) #0 {
  %2 = alloca %struct.qusb2_phy*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.qusb2_phy_cfg*, align 8
  %5 = alloca i32*, align 8
  store %struct.qusb2_phy* %0, %struct.qusb2_phy** %2, align 8
  %6 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %7 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %11 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %10, i32 0, i32 2
  %12 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %11, align 8
  store %struct.qusb2_phy_cfg* %12, %struct.qusb2_phy_cfg** %4, align 8
  %13 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %14 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %20 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @nvmem_cell_read(i32 %21, i32* null)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %73

34:                                               ; preds = %26
  %35 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %41 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @QUSB2PHY_PORT_TUNE1, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HSTX_TRIM_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @HSTX_TRIM_MASK, align 4
  %55 = call i32 @qusb2_write_mask(i32 %42, i32 %48, i32 %53, i32 %54)
  br label %73

56:                                               ; preds = %34
  %57 = load %struct.qusb2_phy*, %struct.qusb2_phy** %2, align 8
  %58 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qusb2_phy_cfg*, %struct.qusb2_phy_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.qusb2_phy_cfg, %struct.qusb2_phy_cfg* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @QUSB2PHY_PORT_TUNE2, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HSTX_TRIM_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @HSTX_TRIM_MASK, align 4
  %72 = call i32 @qusb2_write_mask(i32 %59, i32 %65, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %17, %31, %56, %39
  ret void
}

declare dso_local i32* @nvmem_cell_read(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @qusb2_write_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
