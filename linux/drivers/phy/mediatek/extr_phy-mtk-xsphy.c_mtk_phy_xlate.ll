; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64*, %struct.device_node* }
%struct.mtk_xsphy = type { i32, %struct.xsphy_instance** }
%struct.xsphy_instance = type { i64, %struct.phy* }

@.str = private unnamed_addr constant [43 x i8] c"invalid number of cells in 'phy' property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find appropriate phy\0A\00", align 1
@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported phy type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @mtk_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @mtk_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mtk_xsphy*, align 8
  %7 = alloca %struct.xsphy_instance*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mtk_xsphy* @dev_get_drvdata(%struct.device* %10)
  store %struct.mtk_xsphy* %11, %struct.mtk_xsphy** %6, align 8
  store %struct.xsphy_instance* null, %struct.xsphy_instance** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 2
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %16 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.phy* @ERR_PTR(i32 %23)
  store %struct.phy* %24, %struct.phy** %3, align 8
  br label %103

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %34, i32 0, i32 1
  %36 = load %struct.xsphy_instance**, %struct.xsphy_instance*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xsphy_instance*, %struct.xsphy_instance** %36, i64 %38
  %40 = load %struct.xsphy_instance*, %struct.xsphy_instance** %39, align 8
  %41 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %40, i32 0, i32 1
  %42 = load %struct.phy*, %struct.phy** %41, align 8
  %43 = getelementptr inbounds %struct.phy, %struct.phy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.device_node*, %struct.device_node** %44, align 8
  %46 = icmp eq %struct.device_node* %33, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %48, i32 0, i32 1
  %50 = load %struct.xsphy_instance**, %struct.xsphy_instance*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.xsphy_instance*, %struct.xsphy_instance** %50, i64 %52
  %54 = load %struct.xsphy_instance*, %struct.xsphy_instance** %53, align 8
  store %struct.xsphy_instance* %54, %struct.xsphy_instance** %7, align 8
  br label %59

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %26

59:                                               ; preds = %47, %26
  %60 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %61 = icmp ne %struct.xsphy_instance* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.phy* @ERR_PTR(i32 %66)
  store %struct.phy* %67, %struct.phy** %3, align 8
  br label %103

68:                                               ; preds = %59
  %69 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %70 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %75 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %77 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PHY_TYPE_USB2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %96, label %81

81:                                               ; preds = %68
  %82 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %83 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PHY_TYPE_USB3, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %96, label %87

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %90 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.phy* @ERR_PTR(i32 %94)
  store %struct.phy* %95, %struct.phy** %3, align 8
  br label %103

96:                                               ; preds = %81, %68
  %97 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %6, align 8
  %98 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %99 = call i32 @phy_parse_property(%struct.mtk_xsphy* %97, %struct.xsphy_instance* %98)
  %100 = load %struct.xsphy_instance*, %struct.xsphy_instance** %7, align 8
  %101 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %100, i32 0, i32 1
  %102 = load %struct.phy*, %struct.phy** %101, align 8
  store %struct.phy* %102, %struct.phy** %3, align 8
  br label %103

103:                                              ; preds = %96, %87, %62, %19
  %104 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %104
}

declare dso_local %struct.mtk_xsphy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @phy_parse_property(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
