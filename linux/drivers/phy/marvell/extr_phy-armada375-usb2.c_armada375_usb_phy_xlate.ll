; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada375-usb2.c_armada375_usb_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada375-usb2.c_armada375_usb_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.armada375_cluster_phy = type { i64, i32, %struct.phy* }

@ENODEV = common dso_local global i32 0, align 4
@PHY_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"This PHY has already been provided!\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Check your device tree, only one controller can use it\0A.\00", align 1
@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid PHY mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @armada375_usb_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @armada375_usb_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.armada375_cluster_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.armada375_cluster_phy* @dev_get_drvdata(%struct.device* %7)
  store %struct.armada375_cluster_phy* %8, %struct.armada375_cluster_phy** %6, align 8
  %9 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %10 = icmp ne %struct.armada375_cluster_phy* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.phy* @ERR_PTR(i32 %13)
  store %struct.phy* %14, %struct.phy** %3, align 8
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %17 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %23 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %26 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br label %31

31:                                               ; preds = %21, %15
  %32 = phi i1 [ false, %15 ], [ %30, %21 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PHY_TYPE_USB2, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.phy* @ERR_PTR(i32 %50)
  store %struct.phy* %51, %struct.phy** %3, align 8
  br label %96

52:                                               ; preds = %36
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.phy* @ERR_PTR(i32 %54)
  store %struct.phy* %55, %struct.phy** %3, align 8
  br label %96

56:                                               ; preds = %31
  %57 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %58 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PHY_TYPE_USB2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %66 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %85

67:                                               ; preds = %56
  %68 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %69 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PHY_TYPE_USB3, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %77 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  br label %84

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.phy* @ERR_PTR(i32 %82)
  store %struct.phy* %83, %struct.phy** %3, align 8
  br label %96

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %87 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %92 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %6, align 8
  %94 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %93, i32 0, i32 2
  %95 = load %struct.phy*, %struct.phy** %94, align 8
  store %struct.phy* %95, %struct.phy** %3, align 8
  br label %96

96:                                               ; preds = %85, %78, %52, %48, %11
  %97 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %97
}

declare dso_local %struct.armada375_cluster_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
