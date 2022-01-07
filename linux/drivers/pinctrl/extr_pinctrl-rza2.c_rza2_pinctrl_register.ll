; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza2_pinctrl_priv = type { i32, i32, i32, %struct.TYPE_2__, %struct.pinctrl_pin_desc* }
%struct.TYPE_2__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rza2_gpio_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pinctrl enable failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GPIO registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza2_pinctrl_priv*)* @rza2_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_pinctrl_register(%struct.rza2_pinctrl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rza2_pinctrl_priv*, align 8
  %4 = alloca %struct.pinctrl_pin_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rza2_pinctrl_priv* %0, %struct.rza2_pinctrl_priv** %3, align 8
  %7 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32 %9, i32 %12, i32 8, i32 %13)
  store %struct.pinctrl_pin_desc* %14, %struct.pinctrl_pin_desc** %4, align 8
  %15 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %16 = icmp ne %struct.pinctrl_pin_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %22 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %22, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %21, %struct.pinctrl_pin_desc** %23, align 8
  %24 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %25 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.pinctrl_pin_desc* %24, %struct.pinctrl_pin_desc** %27, align 8
  %28 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %20
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %42, i64 %44
  %46 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load i32*, i32** @rza2_gpio_names, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %52, i64 %54
  %56 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %64, i32 0, i32 3
  %66 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %67 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %67, i32 0, i32 2
  %69 = call i32 @devm_pinctrl_register_and_init(i32 %63, %struct.TYPE_2__* %65, %struct.rza2_pinctrl_priv* %66, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %60
  %79 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pinctrl_enable(i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %103

91:                                               ; preds = %78
  %92 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %93 = call i32 @rza2_gpio_register(%struct.rza2_pinctrl_priv* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %96, %85, %72, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_pinctrl_register_and_init(i32, %struct.TYPE_2__*, %struct.rza2_pinctrl_priv*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @rza2_gpio_register(%struct.rza2_pinctrl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
