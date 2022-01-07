; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.histb_combphy_priv = type { %struct.phy*, %struct.histb_combphy_mode }
%struct.histb_combphy_mode = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHY_TYPE_SATA = common dso_local global i64 0, align 8
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid phy mode select argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"mode select %d mismatch fixed phy mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @histb_combphy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @histb_combphy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.histb_combphy_priv*, align 8
  %7 = alloca %struct.histb_combphy_mode*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.histb_combphy_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.histb_combphy_priv* %9, %struct.histb_combphy_priv** %6, align 8
  %10 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %11 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %10, i32 0, i32 1
  store %struct.histb_combphy_mode* %11, %struct.histb_combphy_mode** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.phy* @ERR_PTR(i32 %20)
  store %struct.phy* %21, %struct.phy** %3, align 8
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %29 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %31 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_TYPE_SATA, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %22
  %36 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %37 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PHY_TYPE_USB3, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %22
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.phy* @ERR_PTR(i32 %45)
  store %struct.phy* %46, %struct.phy** %3, align 8
  br label %75

47:                                               ; preds = %35
  %48 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %49 = call i64 @is_mode_fixed(%struct.histb_combphy_mode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %53 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %56 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %62 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %7, align 8
  %65 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.phy* @ERR_PTR(i32 %69)
  store %struct.phy* %70, %struct.phy** %3, align 8
  br label %75

71:                                               ; preds = %51, %47
  %72 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %6, align 8
  %73 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %72, i32 0, i32 0
  %74 = load %struct.phy*, %struct.phy** %73, align 8
  store %struct.phy* %74, %struct.phy** %3, align 8
  br label %75

75:                                               ; preds = %71, %59, %41, %16
  %76 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %76
}

declare dso_local %struct.histb_combphy_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i64 @is_mode_fixed(%struct.histb_combphy_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
