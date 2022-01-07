; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.pinctrl_desc = type { i32 }
%struct.aspeed_pinctrl_data = type { %struct.pinctrl_dev*, %struct.TYPE_4__ }
%struct.pinctrl_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.pinctrl_dev** }

@.str = private unnamed_addr constant [36 x i8] c"No parent for syscon pincontroller\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No regmap for syscon pincontroller parent\0A\00", align 1
@ASPEED_IP_SCU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_pinctrl_probe(%struct.platform_device* %0, %struct.pinctrl_desc* %1, %struct.aspeed_pinctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.aspeed_pinctrl_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pinctrl_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.pinctrl_desc* %1, %struct.pinctrl_desc** %6, align 8
  store %struct.aspeed_pinctrl_data* %2, %struct.aspeed_pinctrl_data** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pinctrl_dev* @syscon_node_to_regmap(i32 %25)
  %27 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %28 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %27, i32 0, i32 0
  store %struct.pinctrl_dev* %26, %struct.pinctrl_dev** %28, align 8
  %29 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %30 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %29, i32 0, i32 0
  %31 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %30, align 8
  %32 = call i64 @IS_ERR(%struct.pinctrl_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %39 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %38, i32 0, i32 0
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.pinctrl_dev* %40)
  store i32 %41, i32* %4, align 4
  br label %70

42:                                               ; preds = %22
  %43 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %44 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %43, i32 0, i32 0
  %45 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %44, align 8
  %46 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %47 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %48, align 8
  %50 = load i64, i64* @ASPEED_IP_SCU, align 8
  %51 = getelementptr inbounds %struct.pinctrl_dev*, %struct.pinctrl_dev** %49, i64 %50
  store %struct.pinctrl_dev* %45, %struct.pinctrl_dev** %51, align 8
  %52 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %56 = call %struct.pinctrl_dev* @pinctrl_register(%struct.pinctrl_desc* %52, %struct.TYPE_5__* %54, %struct.aspeed_pinctrl_data* %55)
  store %struct.pinctrl_dev* %56, %struct.pinctrl_dev** %9, align 8
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %58 = call i64 @IS_ERR(%struct.pinctrl_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %42
  %61 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %65 = call i32 @PTR_ERR(%struct.pinctrl_dev* %64)
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %42
  %67 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %68 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %7, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.aspeed_pinctrl_data* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %60, %34, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.pinctrl_dev* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_dev*) #1

declare dso_local %struct.pinctrl_dev* @pinctrl_register(%struct.pinctrl_desc*, %struct.TYPE_5__*, %struct.aspeed_pinctrl_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.aspeed_pinctrl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
