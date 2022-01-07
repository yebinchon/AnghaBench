; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_stm32_iwdg.c_stm32_iwdg_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_stm32_iwdg.c_stm32_iwdg_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stm32_iwdg = type { i8*, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to get lsi clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to get pclk clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to prepare pclk clock\0A\00", align 1
@stm32_clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to prepare lsi clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_iwdg*)* @stm32_iwdg_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_iwdg_clk_init(%struct.platform_device* %0, %struct.stm32_iwdg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_iwdg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_iwdg* %1, %struct.stm32_iwdg** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call i8* @devm_clk_get(%struct.device* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %23 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %28 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i8* @devm_clk_get(%struct.device* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %37 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %39 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %3, align 4
  br label %102

50:                                               ; preds = %33
  %51 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %52 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @clk_prepare_enable(i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %102

61:                                               ; preds = %50
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* @stm32_clk_disable_unprepare, align 4
  %64 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %65 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @devm_add_action_or_reset(%struct.device* %62, i32 %63, i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %102

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %75 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @clk_prepare_enable(i8* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %102

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i32, i32* @stm32_clk_disable_unprepare, align 4
  %87 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %88 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @devm_add_action_or_reset(%struct.device* %85, i32 %86, i8* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %102

95:                                               ; preds = %84
  %96 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %97 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @clk_get_rate(i8* %98)
  %100 = load %struct.stm32_iwdg*, %struct.stm32_iwdg** %5, align 8
  %101 = getelementptr inbounds %struct.stm32_iwdg, %struct.stm32_iwdg* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %93, %80, %70, %57, %43, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
