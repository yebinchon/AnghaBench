; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3676.c_ltc3676_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3676.c_ltc3676_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc3676 = type { i32, i32*, %struct.device* }
%struct.device = type { i32 }

@LTC3676_IRQSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"irq%d irqstat=0x%02x\0A\00", align 1
@LTC3676_IRQSTAT_THERMAL_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Over-temperature Warning\0A\00", align 1
@REGULATOR_EVENT_OVER_TEMP = common dso_local global i32 0, align 4
@LTC3676_NUM_REGULATORS = common dso_local global i32 0, align 4
@LTC3676_IRQSTAT_UNDERVOLT_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Undervoltage Warning\0A\00", align 1
@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@LTC3676_CLIRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltc3676_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3676_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ltc3676*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ltc3676*
  store %struct.ltc3676* %11, %struct.ltc3676** %5, align 8
  %12 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %13 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %16 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LTC3676_IRQSTAT, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %8)
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @LTC3676_IRQSTAT_THERMAL_WARN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @REGULATOR_EVENT_OVER_TEMP, align 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %62, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LTC3676_NUM_REGULATORS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %38 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_lock(i32 %43)
  %45 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %46 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @regulator_notifier_call_chain(i32 %51, i32 %52, i32* null)
  %54 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %55 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regulator_unlock(i32 %60)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %32

65:                                               ; preds = %32
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @LTC3676_IRQSTAT_UNDERVOLT_WARN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_info(%struct.device* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  store i32 %74, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %105, %71
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @LTC3676_NUM_REGULATORS, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %81 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regulator_lock(i32 %86)
  %88 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %89 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @regulator_notifier_call_chain(i32 %94, i32 %95, i32* null)
  %97 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %98 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regulator_unlock(i32 %103)
  br label %105

105:                                              ; preds = %79
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %75

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %66
  %110 = load %struct.ltc3676*, %struct.ltc3676** %5, align 8
  %111 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LTC3676_CLIRQ, align 4
  %114 = call i32 @regmap_write(i32 %112, i32 %113, i32 0)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %115
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
