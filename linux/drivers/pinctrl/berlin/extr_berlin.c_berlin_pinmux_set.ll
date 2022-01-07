; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinmux_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinmux_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.berlin_pinctrl = type { i32, %struct.berlin_pinctrl_function*, %struct.TYPE_2__* }
%struct.berlin_pinctrl_function = type { i32 }
%struct.TYPE_2__ = type { %struct.berlin_desc_group* }
%struct.berlin_desc_group = type { i32, i32, i64 }
%struct.berlin_desc_function = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @berlin_pinmux_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pinmux_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.berlin_pinctrl*, align 8
  %9 = alloca %struct.berlin_desc_group*, align 8
  %10 = alloca %struct.berlin_pinctrl_function*, align 8
  %11 = alloca %struct.berlin_desc_function*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.berlin_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.berlin_pinctrl* %15, %struct.berlin_pinctrl** %8, align 8
  %16 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %20, i64 %22
  store %struct.berlin_desc_group* %23, %struct.berlin_desc_group** %9, align 8
  %24 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %24, i32 0, i32 1
  %26 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %26, i64 %28
  store %struct.berlin_pinctrl_function* %29, %struct.berlin_pinctrl_function** %10, align 8
  %30 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %8, align 8
  %31 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %32 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %10, align 8
  %33 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.berlin_desc_function* @berlin_pinctrl_find_function_by_name(%struct.berlin_pinctrl* %30, %struct.berlin_desc_group* %31, i32 %34)
  store %struct.berlin_desc_function* %35, %struct.berlin_desc_function** %11, align 8
  %36 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %11, align 8
  %37 = icmp ne %struct.berlin_desc_function* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %3
  %42 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %43 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %47 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = sub nsw i64 %49, 1
  %51 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %52 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GENMASK(i64 %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %11, align 8
  %56 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %59 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %57, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %8, align 8
  %63 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %9, align 8
  %66 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @regmap_update_bits(i32 %64, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %41, %38
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.berlin_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.berlin_desc_function* @berlin_pinctrl_find_function_by_name(%struct.berlin_pinctrl*, %struct.berlin_desc_group*, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
