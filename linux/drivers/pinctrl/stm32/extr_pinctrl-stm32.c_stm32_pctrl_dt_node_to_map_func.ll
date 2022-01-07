; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_node_to_map_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_node_to_map_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pinctrl = type { i32 }
%struct.stm32_pinctrl_group = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid function %d on pin %d .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32_gpio_functions = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pinctrl*, i64, i64, %struct.stm32_pinctrl_group*, %struct.pinctrl_map**, i32*, i32*)* @stm32_pctrl_dt_node_to_map_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_dt_node_to_map_func(%struct.stm32_pinctrl* %0, i64 %1, i64 %2, %struct.stm32_pinctrl_group* %3, %struct.pinctrl_map** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_pinctrl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_pinctrl_group*, align 8
  %13 = alloca %struct.pinctrl_map**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.stm32_pinctrl* %0, %struct.stm32_pinctrl** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.stm32_pinctrl_group* %3, %struct.stm32_pinctrl_group** %12, align 8
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %14, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %76

24:                                               ; preds = %7
  %25 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %26 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %27 = load %struct.pinctrl_map*, %struct.pinctrl_map** %26, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %27, i64 %30
  %32 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %31, i32 0, i32 1
  store i32 %25, i32* %32, align 4
  %33 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %12, align 8
  %34 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %37 = load %struct.pinctrl_map*, %struct.pinctrl_map** %36, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %37, i64 %40
  %42 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %35, i32* %44, align 4
  %45 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl* %45, i64 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %24
  %51 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %52 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %76

59:                                               ; preds = %24
  %60 = load i32*, i32** @stm32_gpio_functions, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %65 = load %struct.pinctrl_map*, %struct.pinctrl_map** %64, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %65, i64 %68
  %70 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %63, i32* %72, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %59, %50, %21
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
