; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ingenic_pinctrl = type { i32 }
%struct.function_desc = type { i32 }
%struct.group_desc = type { i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @ingenic_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ingenic_pinctrl*, align 8
  %9 = alloca %struct.function_desc*, align 8
  %10 = alloca %struct.group_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.ingenic_pinctrl* %14, %struct.ingenic_pinctrl** %8, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %15, i32 %16)
  store %struct.function_desc* %17, %struct.function_desc** %9, align 8
  %18 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %19 = icmp ne %struct.function_desc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %3
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %24, i32 %25)
  store %struct.group_desc* %26, %struct.group_desc** %10, align 8
  %27 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %28 = icmp ne %struct.group_desc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %37 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %40 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %67, %32
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %46 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %51 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %12, align 8
  %53 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %54 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %55 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ingenic_pinmux_set_pin_fn(%struct.ingenic_pinctrl* %53, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %49
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %43

70:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %29, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ingenic_pinmux_set_pin_fn(%struct.ingenic_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
