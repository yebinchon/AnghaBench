; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3589.c_ltc3589_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3589.c_ltc3589_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc3589 = type { i32, i32* }

@LTC3589_IRQSTAT = common dso_local global i32 0, align 4
@LTC3589_IRQSTAT_THERMAL_WARN = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_TEMP = common dso_local global i32 0, align 4
@LTC3589_NUM_REGULATORS = common dso_local global i32 0, align 4
@LTC3589_IRQSTAT_UNDERVOLT_WARN = common dso_local global i32 0, align 4
@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@LTC3589_CLIRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltc3589_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3589_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ltc3589*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ltc3589*
  store %struct.ltc3589* %10, %struct.ltc3589** %5, align 8
  %11 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %12 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LTC3589_IRQSTAT, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @LTC3589_IRQSTAT_THERMAL_WARN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load i32, i32* @REGULATOR_EVENT_OVER_TEMP, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %52, %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LTC3589_NUM_REGULATORS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %28 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regulator_lock(i32 %33)
  %35 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %36 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @regulator_notifier_call_chain(i32 %41, i32 %42, i32* null)
  %44 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %45 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regulator_unlock(i32 %50)
  br label %52

52:                                               ; preds = %26
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %22

55:                                               ; preds = %22
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LTC3589_IRQSTAT_UNDERVOLT_WARN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %56
  %62 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  store i32 %62, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %93, %61
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LTC3589_NUM_REGULATORS, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %69 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regulator_lock(i32 %74)
  %76 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %77 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @regulator_notifier_call_chain(i32 %82, i32 %83, i32* null)
  %85 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %86 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regulator_unlock(i32 %91)
  br label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %63

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.ltc3589*, %struct.ltc3589** %5, align 8
  %99 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @LTC3589_CLIRQ, align 4
  %102 = call i32 @regmap_write(i32 %100, i32 %101, i32 0)
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %103
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
