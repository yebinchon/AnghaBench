; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_create_group_func_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_create_group_func_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.lpc18xx_scu_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@lpc18xx_pins = common dso_local global %struct.TYPE_5__* null, align 8
@FUNC_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.lpc18xx_scu_data*)* @lpc18xx_create_group_func_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_create_group_func_map(%struct.device* %0, %struct.lpc18xx_scu_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lpc18xx_scu_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.lpc18xx_scu_data* %1, %struct.lpc18xx_scu_data** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc18xx_pins, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %104, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @FUNC_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc18xx_pins, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @lpc18xx_valid_pin_function(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i64, i64* %16, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %5, align 8
  %46 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @devm_kcalloc(%struct.device* %52, i32 %53, i32 8, i32 %54)
  %56 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %5, align 8
  %57 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* %55, i32** %62, align 8
  %63 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %5, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %43
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %108

75:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc18xx_pins, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %16, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %5, align 8
  %90 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %88, i32* %99, align 4
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %76

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %17

107:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %72
  %109 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @lpc18xx_valid_pin_function(i32, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
