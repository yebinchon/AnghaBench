; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_create_bat_triggers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_create_bat_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i8*, i8*, i8*, i32, i8*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s-charging-or-full\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s-charging\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s-full\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s-charging-blink-full-solid\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @power_supply_create_bat_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_create_bat_triggers(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @kasprintf(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %103

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %21 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %20, i32 0, i32 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @kasprintf(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %27 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %98

33:                                               ; preds = %18
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %36 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %35, i32 0, i32 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @kasprintf(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %42 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %44 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  br label %93

48:                                               ; preds = %33
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %51 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %50, i32 0, i32 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @kasprintf(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %57 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %59 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  br label %88

63:                                               ; preds = %48
  %64 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %65 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %68 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %67, i32 0, i32 7
  %69 = call i32 @led_trigger_register_simple(i8* %66, i32* %68)
  %70 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %71 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %74 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %73, i32 0, i32 6
  %75 = call i32 @led_trigger_register_simple(i8* %72, i32* %74)
  %76 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %77 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %80 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %79, i32 0, i32 5
  %81 = call i32 @led_trigger_register_simple(i8* %78, i32* %80)
  %82 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %83 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %86 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %85, i32 0, i32 3
  %87 = call i32 @led_trigger_register_simple(i8* %84, i32* %86)
  store i32 0, i32* %2, align 4
  br label %106

88:                                               ; preds = %62
  %89 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %90 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @kfree(i8* %91)
  br label %93

93:                                               ; preds = %88, %47
  %94 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %95 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @kfree(i8* %96)
  br label %98

98:                                               ; preds = %93, %32
  %99 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %100 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @kfree(i8* %101)
  br label %103

103:                                              ; preds = %98, %17
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %63
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @led_trigger_register_simple(i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
