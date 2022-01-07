; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_register_pinconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_register_pinconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_gpio = type { i32, i32, %struct.gpio_chip, %struct.pinctrl_desc }
%struct.gpio_chip = type { i32 }
%struct.pinctrl_desc = type { i32, i32*, %struct.pinctrl_pin_desc*, i32*, i32 }
%struct.pinctrl_pin_desc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gpio-%d\00", align 1
@nsp_pctrl_ops = common dso_local global i32 0, align 4
@nsp_pconf_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to register pinctrl device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsp_gpio*)* @nsp_gpio_register_pinconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_register_pinconf(%struct.nsp_gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsp_gpio*, align 8
  %4 = alloca %struct.pinctrl_desc*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.nsp_gpio* %0, %struct.nsp_gpio** %3, align 8
  %8 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %9 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %8, i32 0, i32 3
  store %struct.pinctrl_desc* %9, %struct.pinctrl_desc** %4, align 8
  %10 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %10, i32 0, i32 2
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %13 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32 %14, i32 %17, i32 8, i32 %18)
  store %struct.pinctrl_pin_desc* %19, %struct.pinctrl_pin_desc** %5, align 8
  %20 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %21 = icmp ne %struct.pinctrl_pin_desc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %34, i64 %36
  %38 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %40 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @devm_kasprintf(i32 %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %45, i64 %47
  %49 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %50, i64 %52
  %54 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %32
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %106

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %26

64:                                               ; preds = %26
  %65 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %66 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_name(i32 %67)
  %69 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %70 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %72 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %71, i32 0, i32 3
  store i32* @nsp_pctrl_ops, i32** %72, align 8
  %73 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %74 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %75 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %74, i32 0, i32 2
  store %struct.pinctrl_pin_desc* %73, %struct.pinctrl_pin_desc** %75, align 8
  %76 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %77 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %80 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %82 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %81, i32 0, i32 1
  store i32* @nsp_pconf_ops, i32** %82, align 8
  %83 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %84 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %4, align 8
  %87 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %88 = call i32 @devm_pinctrl_register(i32 %85, %struct.pinctrl_desc* %86, %struct.nsp_gpio* %87)
  %89 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %90 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %92 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %64
  %97 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %98 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.nsp_gpio*, %struct.nsp_gpio** %3, align 8
  %102 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %96, %57, %22
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devm_pinctrl_register(i32, %struct.pinctrl_desc*, %struct.nsp_gpio*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
