; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_reserve_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_reserve_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pinctrl_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pinctrl_map**, i32*, i32*, i32)* @reserve_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_map(%struct.device* %0, %struct.pinctrl_map** %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pinctrl_map*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.pinctrl_map** %1, %struct.pinctrl_map*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

25:                                               ; preds = %5
  %26 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %27 = load %struct.pinctrl_map*, %struct.pinctrl_map** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.pinctrl_map* @krealloc(%struct.pinctrl_map* %27, i32 %31, i32 %32)
  store %struct.pinctrl_map* %33, %struct.pinctrl_map** %14, align 8
  %34 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %35 = icmp ne %struct.pinctrl_map* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %25
  %40 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %40, i64 %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(%struct.pinctrl_map* %43, i32 0, i32 %49)
  %51 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %52 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %51, %struct.pinctrl_map** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %39, %36, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.pinctrl_map* @krealloc(%struct.pinctrl_map*, i32, i32) #1

declare dso_local i32 @memset(%struct.pinctrl_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
