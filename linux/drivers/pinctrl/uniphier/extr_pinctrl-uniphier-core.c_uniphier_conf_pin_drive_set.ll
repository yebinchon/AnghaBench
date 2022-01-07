; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_drive_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_drive_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32 }
%struct.pin_desc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"cannot set drive strength for pin %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unsupported drive strength %u mA for pin %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @uniphier_conf_pin_drive_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_drive_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %9 = alloca %struct.pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.uniphier_pinctrl_priv* %17, %struct.uniphier_pinctrl_priv** %8, align 8
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %18, i32 %19)
  store %struct.pin_desc* %20, %struct.pin_desc** %9, align 8
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @uniphier_conf_get_drvctrl_data(%struct.pinctrl_dev* %21, i32 %22, i32* %10, i32* %11, i32* %12, i32** %14)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %31 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %4, align 4
  br label %85

35:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %36

53:                                               ; preds = %48, %36
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %58 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %62 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %85

67:                                               ; preds = %53
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %85

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %75 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %81, %82
  %84 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %71, %70, %56, %26
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_conf_get_drvctrl_data(%struct.pinctrl_dev*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
