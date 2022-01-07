; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ti_iodelay_device = type { %struct.device* }
%struct.device = type { i32 }
%struct.ti_iodelay_pingroup = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported number of configurations %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported configuration\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @ti_iodelay_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_iodelay_device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.ti_iodelay_pingroup*, align 8
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.ti_iodelay_device* %15, %struct.ti_iodelay_device** %10, align 8
  %16 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %10, align 8
  %17 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.ti_iodelay_pingroup* @ti_iodelay_get_pingroup(%struct.ti_iodelay_device* %19, i32 %20)
  store %struct.ti_iodelay_pingroup* %21, %struct.ti_iodelay_pingroup** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PIN_CONFIG_END, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %11, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %65

40:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ti_iodelay_pingroup*, %struct.ti_iodelay_pingroup** %12, align 8
  %44 = getelementptr inbounds %struct.ti_iodelay_pingroup, %struct.ti_iodelay_pingroup* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %10, align 8
  %49 = load %struct.ti_iodelay_pingroup*, %struct.ti_iodelay_pingroup** %12, align 8
  %50 = getelementptr inbounds %struct.ti_iodelay_pingroup, %struct.ti_iodelay_pingroup* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i64 @ti_iodelay_pinconf_set(%struct.ti_iodelay_device* %48, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %65

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %57, %35, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.ti_iodelay_pingroup* @ti_iodelay_get_pingroup(%struct.ti_iodelay_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @ti_iodelay_pinconf_set(%struct.ti_iodelay_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
