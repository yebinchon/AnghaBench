; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9211 = type { i32, i32, i32* }

@IRQ_NONE = common dso_local global i32 0, align 4
@DA9211_REG_EVENT_B = common dso_local global i32 0, align 4
@DA9211_E_OV_CURR_A = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_CURRENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DA9211_E_OV_CURR_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"I2C error : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9211_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.da9211*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.da9211*
  store %struct.da9211* %11, %struct.da9211** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.da9211*, %struct.da9211** %6, align 8
  %14 = getelementptr inbounds %struct.da9211, %struct.da9211* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DA9211_REG_EVENT_B, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %95

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DA9211_E_OV_CURR_A, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.da9211*, %struct.da9211** %6, align 8
  %28 = getelementptr inbounds %struct.da9211, %struct.da9211* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_lock(i32 %31)
  %33 = load %struct.da9211*, %struct.da9211** %6, align 8
  %34 = getelementptr inbounds %struct.da9211, %struct.da9211* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %39 = call i32 @regulator_notifier_call_chain(i32 %37, i32 %38, i32* null)
  %40 = load %struct.da9211*, %struct.da9211** %6, align 8
  %41 = getelementptr inbounds %struct.da9211, %struct.da9211* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regulator_unlock(i32 %44)
  %46 = load %struct.da9211*, %struct.da9211** %6, align 8
  %47 = getelementptr inbounds %struct.da9211, %struct.da9211* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DA9211_REG_EVENT_B, align 4
  %50 = load i32, i32* @DA9211_E_OV_CURR_A, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  br label %95

55:                                               ; preds = %26
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DA9211_E_OV_CURR_B, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load %struct.da9211*, %struct.da9211** %6, align 8
  %64 = getelementptr inbounds %struct.da9211, %struct.da9211* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regulator_lock(i32 %67)
  %69 = load %struct.da9211*, %struct.da9211** %6, align 8
  %70 = getelementptr inbounds %struct.da9211, %struct.da9211* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %75 = call i32 @regulator_notifier_call_chain(i32 %73, i32 %74, i32* null)
  %76 = load %struct.da9211*, %struct.da9211** %6, align 8
  %77 = getelementptr inbounds %struct.da9211, %struct.da9211* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regulator_unlock(i32 %80)
  %82 = load %struct.da9211*, %struct.da9211** %6, align 8
  %83 = getelementptr inbounds %struct.da9211, %struct.da9211* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DA9211_REG_EVENT_B, align 4
  %86 = load i32, i32* @DA9211_E_OV_CURR_B, align 4
  %87 = call i32 @regmap_write(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %62
  br label %95

91:                                               ; preds = %62
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %57
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %102

95:                                               ; preds = %90, %54, %20
  %96 = load %struct.da9211*, %struct.da9211** %6, align 8
  %97 = getelementptr inbounds %struct.da9211, %struct.da9211* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @IRQ_NONE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %93
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
