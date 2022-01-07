; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.rcar_gen3_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy* }

@PHY_INDEX_BOTH_HC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NUM_OF_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @rcar_gen3_phy_usb2_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @rcar_gen3_phy_usb2_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.rcar_gen3_chan*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device* %7)
  store %struct.rcar_gen3_chan* %8, %struct.rcar_gen3_chan** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %6, align 8
  %15 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @PHY_INDEX_BOTH_HC, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.phy*, %struct.phy** %19, align 8
  store %struct.phy* %20, %struct.phy** %3, align 8
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.phy* @ERR_PTR(i32 %28)
  store %struct.phy* %29, %struct.phy** %3, align 8
  br label %55

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NUM_OF_PHYS, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.phy* @ERR_PTR(i32 %41)
  store %struct.phy* %42, %struct.phy** %3, align 8
  br label %55

43:                                               ; preds = %31
  %44 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %6, align 8
  %45 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %48 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.phy*, %struct.phy** %53, align 8
  store %struct.phy* %54, %struct.phy** %3, align 8
  br label %55

55:                                               ; preds = %43, %39, %26, %13
  %56 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %56
}

declare dso_local %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
