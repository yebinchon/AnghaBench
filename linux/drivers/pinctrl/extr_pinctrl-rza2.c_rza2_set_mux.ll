; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rza2_pinctrl_priv = type { i32, i32 }
%struct.function_desc = type { i32* }
%struct.group_desc = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Setting P%c_%d to PSEL=%d\0A\00", align 1
@port_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @rza2_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rza2_pinctrl_priv*, align 8
  %9 = alloca %struct.function_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.group_desc*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.rza2_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.rza2_pinctrl_priv* %14, %struct.rza2_pinctrl_priv** %8, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %15, i32 %16)
  store %struct.group_desc* %17, %struct.group_desc** %12, align 8
  %18 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %19 = icmp ne %struct.group_desc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %24, i32 %25)
  store %struct.function_desc* %26, %struct.function_desc** %9, align 8
  %27 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %28 = icmp ne %struct.function_desc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %23
  %33 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %34 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %96, %32
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %39 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %36
  %43 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %8, align 8
  %44 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @port_names, align 8
  %47 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %48 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @RZA2_PIN_ID_TO_PORT(i32 %53)
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %58 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @RZA2_PIN_ID_TO_PIN(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %64, i32 %69)
  %71 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %8, align 8
  %72 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %75 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @RZA2_PIN_ID_TO_PORT(i32 %80)
  %82 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %83 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @RZA2_PIN_ID_TO_PIN(i32 %88)
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rza2_set_pin_function(i32 %73, i64 %81, i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %42
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %36

99:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %29, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.rza2_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @RZA2_PIN_ID_TO_PORT(i32) #1

declare dso_local i32 @RZA2_PIN_ID_TO_PIN(i32) #1

declare dso_local i32 @rza2_set_pin_function(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
