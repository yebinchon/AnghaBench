; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.a38x_comphy_lane = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MAX_A38X_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@COMPHY_SELECTOR = common dso_local global i64 0, align 8
@gbe_mux = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [34 x i8] c"comphy%u: not configured for GBE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @a38x_comphy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @a38x_comphy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.a38x_comphy_lane*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_A38X_PORTS, align 8
  %15 = icmp sge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.phy* @ERR_PTR(i32 %21)
  store %struct.phy* %22, %struct.phy** %3, align 8
  br label %110

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %26 = call %struct.phy* @of_phy_simple_xlate(%struct.device* %24, %struct.of_phandle_args* %25)
  store %struct.phy* %26, %struct.phy** %7, align 8
  %27 = load %struct.phy*, %struct.phy** %7, align 8
  %28 = call i64 @IS_ERR(%struct.phy* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %31, %struct.phy** %3, align 8
  br label %110

32:                                               ; preds = %23
  %33 = load %struct.phy*, %struct.phy** %7, align 8
  %34 = call %struct.a38x_comphy_lane* @phy_get_drvdata(%struct.phy* %33)
  store %struct.a38x_comphy_lane* %34, %struct.a38x_comphy_lane** %6, align 8
  %35 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %36 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.phy* @ERR_PTR(i32 %41)
  store %struct.phy* %42, %struct.phy** %3, align 8
  br label %110

43:                                               ; preds = %32
  %44 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %50 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %52 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @COMPHY_SELECTOR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl_relaxed(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %61 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 4, %62
  %64 = ashr i32 %59, %63
  %65 = and i32 %64, 15
  store i32 %65, i32* %8, align 4
  %66 = load i32**, i32*** @gbe_mux, align 8
  %67 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %68 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %66, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %74 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %43
  %80 = load i32, i32* %8, align 4
  %81 = load i32**, i32*** @gbe_mux, align 8
  %82 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %83 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %89 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %80, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %79, %43
  %95 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %96 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %6, align 8
  %101 = getelementptr inbounds %struct.a38x_comphy_lane, %struct.a38x_comphy_lane* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = call i32 @dev_warn(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.phy* @ERR_PTR(i32 %106)
  store %struct.phy* %107, %struct.phy** %7, align 8
  br label %108

108:                                              ; preds = %94, %79
  %109 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %109, %struct.phy** %3, align 8
  br label %110

110:                                              ; preds = %108, %39, %30, %19
  %111 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %111
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @of_phy_simple_xlate(%struct.device*, %struct.of_phandle_args*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local %struct.a38x_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
