; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9210-regulator.c_da9210_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9210-regulator.c_da9210_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9210 = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DA9210_REG_EVENT_B = common dso_local global i32 0, align 4
@DA9210_E_OVCURR = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_CURRENT = common dso_local global i32 0, align 4
@DA9210_E_NPWRGOOD = common dso_local global i32 0, align 4
@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@DA9210_E_TEMP_WARN = common dso_local global i32 0, align 4
@DA9210_E_TEMP_CRIT = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_TEMP = common dso_local global i32 0, align 4
@DA9210_E_VMAX = common dso_local global i32 0, align 4
@REGULATOR_EVENT_REGULATION_OUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"I2C error : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9210_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9210_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.da9210*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.da9210*
  store %struct.da9210* %12, %struct.da9210** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.da9210*, %struct.da9210** %6, align 8
  %15 = getelementptr inbounds %struct.da9210, %struct.da9210* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DA9210_REG_EVENT_B, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %109

22:                                               ; preds = %2
  %23 = load %struct.da9210*, %struct.da9210** %6, align 8
  %24 = getelementptr inbounds %struct.da9210, %struct.da9210* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_lock(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DA9210_E_OVCURR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.da9210*, %struct.da9210** %6, align 8
  %33 = getelementptr inbounds %struct.da9210, %struct.da9210* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %36 = call i32 @regulator_notifier_call_chain(i32 %34, i32 %35, i32* null)
  %37 = load i32, i32* @DA9210_E_OVCURR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DA9210_E_NPWRGOOD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.da9210*, %struct.da9210** %6, align 8
  %47 = getelementptr inbounds %struct.da9210, %struct.da9210* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  %50 = call i32 @regulator_notifier_call_chain(i32 %48, i32 %49, i32* null)
  %51 = load i32, i32* @DA9210_E_NPWRGOOD, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DA9210_E_TEMP_WARN, align 4
  %57 = load i32, i32* @DA9210_E_TEMP_CRIT, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.da9210*, %struct.da9210** %6, align 8
  %63 = getelementptr inbounds %struct.da9210, %struct.da9210* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REGULATOR_EVENT_OVER_TEMP, align 4
  %66 = call i32 @regulator_notifier_call_chain(i32 %64, i32 %65, i32* null)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @DA9210_E_TEMP_WARN, align 4
  %69 = load i32, i32* @DA9210_E_TEMP_CRIT, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %61, %54
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @DA9210_E_VMAX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.da9210*, %struct.da9210** %6, align 8
  %81 = getelementptr inbounds %struct.da9210, %struct.da9210* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @REGULATOR_EVENT_REGULATION_OUT, align 4
  %84 = call i32 @regulator_notifier_call_chain(i32 %82, i32 %83, i32* null)
  %85 = load i32, i32* @DA9210_E_VMAX, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79, %74
  %89 = load %struct.da9210*, %struct.da9210** %6, align 8
  %90 = getelementptr inbounds %struct.da9210, %struct.da9210* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regulator_unlock(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.da9210*, %struct.da9210** %6, align 8
  %97 = getelementptr inbounds %struct.da9210, %struct.da9210* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DA9210_REG_EVENT_B, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @regmap_write(i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %109

105:                                              ; preds = %95
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %105, %88
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %117

109:                                              ; preds = %104, %21
  %110 = load %struct.da9210*, %struct.da9210** %6, align 8
  %111 = getelementptr inbounds %struct.da9210, %struct.da9210* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @regmap_get_device(i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %109, %107
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
