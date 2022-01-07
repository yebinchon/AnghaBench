; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-oxnas.c_oxnas_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-oxnas.c_oxnas_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.oxnas_reset = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"no parent\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get parent regmap\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@oxnas_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.oxnas_reset*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.oxnas_reset* @devm_kzalloc(%struct.TYPE_5__* %20, i32 32, i32 %21)
  store %struct.oxnas_reset* %22, %struct.oxnas_reset** %4, align 8
  %23 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %24 = icmp ne %struct.oxnas_reset* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @syscon_node_to_regmap(i32 %31)
  %33 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %34 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %36 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %45 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %74

48:                                               ; preds = %28
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.oxnas_reset* %50)
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %54 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %57 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 32, i32* %58, align 8
  %59 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %60 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32* @oxnas_reset_ops, i32** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %67 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.oxnas_reset*, %struct.oxnas_reset** %4, align 8
  %72 = getelementptr inbounds %struct.oxnas_reset, %struct.oxnas_reset* %71, i32 0, i32 0
  %73 = call i32 @devm_reset_controller_register(%struct.TYPE_5__* %70, %struct.TYPE_6__* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %48, %40, %25, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.oxnas_reset* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.oxnas_reset*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
