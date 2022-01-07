; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_add_map_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_add_map_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64*, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pinctrl_map**, i32*, i32*, i8*, i64*, i32)* @add_map_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_map_configs(%struct.device* %0, %struct.pinctrl_map** %1, i32* %2, i32* %3, i8* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.pinctrl_map**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.pinctrl_map** %1, %struct.pinctrl_map*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %83

28:                                               ; preds = %7
  %29 = load i64*, i64** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64* @kmemdup(i64* %29, i32 %33, i32 %34)
  store i64* %35, i64** %16, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %83

41:                                               ; preds = %28
  %42 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  %43 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %10, align 8
  %44 = load %struct.pinctrl_map*, %struct.pinctrl_map** %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %44, i64 %47
  %49 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %10, align 8
  %52 = load %struct.pinctrl_map*, %struct.pinctrl_map** %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %52, i64 %55
  %57 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %50, i8** %59, align 8
  %60 = load i64*, i64** %16, align 8
  %61 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %10, align 8
  %62 = load %struct.pinctrl_map*, %struct.pinctrl_map** %61, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %62, i64 %65
  %67 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64* %60, i64** %69, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %10, align 8
  %72 = load %struct.pinctrl_map*, %struct.pinctrl_map** %71, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %72, i64 %75
  %77 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 %70, i32* %79, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %41, %38, %25
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64* @kmemdup(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
