; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.stm32_gpio_bank = type { i32 }

@stm32_pconf_dbg_show.modes = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@stm32_pconf_dbg_show.speeds = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"very high\00", align 1
@stm32_pconf_dbg_show.biasing = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pull up\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pull down\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"- %s - %s\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"- %s - %s - %s - %s %s\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"push pull\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"%d - %s - %s - %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @stm32_pconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_pconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca %struct.stm32_gpio_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev* %16, i32 %17)
  store %struct.pinctrl_gpio_range* %18, %struct.pinctrl_gpio_range** %7, align 8
  %19 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %20 = icmp ne %struct.pinctrl_gpio_range* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %101

22:                                               ; preds = %3
  %23 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %24 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.stm32_gpio_bank* @gpiochip_get_data(i32 %25)
  store %struct.stm32_gpio_bank* %26, %struct.stm32_gpio_bank** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @stm32_gpio_pin(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @stm32_pmx_get_mode(%struct.stm32_gpio_bank* %29, i32 %30, i64* %10, i64* %11)
  %32 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @stm32_pconf_get_bias(%struct.stm32_gpio_bank* %32, i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.modes, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* %10, align 8
  switch i64 %40, label %101 [
    i64 0, label %41
    i64 1, label %54
    i64 2, label %80
    i64 3, label %100
  ]

41:                                               ; preds = %22
  %42 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @stm32_pconf_get(%struct.stm32_gpio_bank* %42, i32 %43, i32 1)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.biasing, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %49, i8* %52)
  br label %101

54:                                               ; preds = %22
  %55 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @stm32_pconf_get_driving(%struct.stm32_gpio_bank* %55, i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @stm32_pconf_get_speed(%struct.stm32_gpio_bank* %58, i32 %59)
  store i64 %60, i64* %13, align 8
  %61 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @stm32_pconf_get(%struct.stm32_gpio_bank* %61, i32 %62, i32 0)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.biasing, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.speeds, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %68, i8* %72, i8* %75, i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %101

80:                                               ; preds = %22
  %81 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @stm32_pconf_get_driving(%struct.stm32_gpio_bank* %81, i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @stm32_pconf_get_speed(%struct.stm32_gpio_bank* %84, i32 %85)
  store i64 %86, i64* %13, align 8
  %87 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.biasing, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds [4 x i8*], [4 x i8*]* @stm32_pconf_dbg_show.speeds, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 %88, i8* %92, i8* %95, i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %101

100:                                              ; preds = %22
  br label %101

101:                                              ; preds = %21, %22, %100, %80, %54, %41
  ret void
}

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.stm32_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @stm32_gpio_pin(i32) #1

declare dso_local i32 @stm32_pmx_get_mode(%struct.stm32_gpio_bank*, i32, i64*, i64*) #1

declare dso_local i64 @stm32_pconf_get_bias(%struct.stm32_gpio_bank*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @stm32_pconf_get(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i64 @stm32_pconf_get_driving(%struct.stm32_gpio_bank*, i32) #1

declare dso_local i64 @stm32_pconf_get_speed(%struct.stm32_gpio_bank*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
