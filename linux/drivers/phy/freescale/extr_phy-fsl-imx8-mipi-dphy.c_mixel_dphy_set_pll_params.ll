; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_set_pll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_set_pll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mixel_dphy_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid CM/CN/CO values! (%u/%u/%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Using CM:%u CN:%u CO:%u\0A\00", align 1
@DPHY_CM = common dso_local global i32 0, align 4
@DPHY_CN = common dso_local global i32 0, align 4
@DPHY_CO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mixel_dphy_set_pll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixel_dphy_set_pll_params(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mixel_dphy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = getelementptr inbounds %struct.phy, %struct.phy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mixel_dphy_priv* @dev_get_drvdata(i32 %8)
  store %struct.mixel_dphy_priv* %9, %struct.mixel_dphy_priv** %4, align 8
  %10 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  %22 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 32
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 8
  br i1 %44, label %45, label %63

45:                                               ; preds = %39, %33, %27, %21, %15, %1
  %46 = load %struct.phy*, %struct.phy** %3, align 8
  %47 = getelementptr inbounds %struct.phy, %struct.phy* %46, i32 0, i32 0
  %48 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %49 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %57 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %103

63:                                               ; preds = %39
  %64 = load %struct.phy*, %struct.phy** %3, align 8
  %65 = getelementptr inbounds %struct.phy, %struct.phy* %64, i32 0, i32 0
  %66 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %73, i32 %77)
  %79 = load %struct.phy*, %struct.phy** %3, align 8
  %80 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CM(i32 %83)
  %85 = load i32, i32* @DPHY_CM, align 4
  %86 = call i32 @phy_write(%struct.phy* %79, i32 %84, i32 %85)
  %87 = load %struct.phy*, %struct.phy** %3, align 8
  %88 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CN(i32 %91)
  %93 = load i32, i32* @DPHY_CN, align 4
  %94 = call i32 @phy_write(%struct.phy* %87, i32 %92, i32 %93)
  %95 = load %struct.phy*, %struct.phy** %3, align 8
  %96 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %97 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CO(i32 %99)
  %101 = load i32, i32* @DPHY_CO, align 4
  %102 = call i32 @phy_write(%struct.phy* %95, i32 %100, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %63, %45
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.mixel_dphy_priv* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy*, i32, i32) #1

declare dso_local i32 @CM(i32) #1

declare dso_local i32 @CN(i32) #1

declare dso_local i32 @CO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
