; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb2.c_uniphier_u2phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb2.c_uniphier_u2phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64 }
%struct.uniphier_u2phy_priv = type { %struct.phy*, %struct.uniphier_u2phy_priv* }

@.str = private unnamed_addr constant [32 x i8] c"Failed to find appropriate phy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @uniphier_u2phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @uniphier_u2phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.uniphier_u2phy_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.uniphier_u2phy_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.uniphier_u2phy_priv* %8, %struct.uniphier_u2phy_priv** %6, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %6, align 8
  %11 = icmp ne %struct.uniphier_u2phy_priv* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %6, align 8
  %17 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %16, i32 0, i32 0
  %18 = load %struct.phy*, %struct.phy** %17, align 8
  %19 = getelementptr inbounds %struct.phy, %struct.phy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br label %23

23:                                               ; preds = %12, %9
  %24 = phi i1 [ false, %9 ], [ %22, %12 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %6, align 8
  %27 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %26, i32 0, i32 1
  %28 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %27, align 8
  store %struct.uniphier_u2phy_priv* %28, %struct.uniphier_u2phy_priv** %6, align 8
  br label %9

29:                                               ; preds = %23
  %30 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %6, align 8
  %31 = icmp ne %struct.uniphier_u2phy_priv* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.phy* @ERR_PTR(i32 %36)
  store %struct.phy* %37, %struct.phy** %3, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %6, align 8
  %40 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %39, i32 0, i32 0
  %41 = load %struct.phy*, %struct.phy** %40, align 8
  store %struct.phy* %41, %struct.phy** %3, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %43
}

declare dso_local %struct.uniphier_u2phy_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
