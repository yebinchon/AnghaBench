; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv88080 = type { i32, i32, i32** }

@IRQ_NONE = common dso_local global i32 0, align 4
@PV88080_REG_EVENT_A = common dso_local global i32 0, align 4
@PV88080_E_VDD_FLT = common dso_local global i32 0, align 4
@PV88080_MAX_REGULATORS = common dso_local global i32 0, align 4
@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PV88080_E_OVER_TEMP = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"I2C error : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pv88080_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv88080_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pv88080*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pv88080*
  store %struct.pv88080* %12, %struct.pv88080** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %15 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PV88080_REG_EVENT_A, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %146

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PV88080_E_VDD_FLT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %68, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PV88080_MAX_REGULATORS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %34 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %32
  %42 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %43 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @regulator_lock(i32* %48)
  %50 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %51 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  %58 = call i32 @regulator_notifier_call_chain(i32* %56, i32 %57, i32* null)
  %59 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %60 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @regulator_unlock(i32* %65)
  br label %67

67:                                               ; preds = %41, %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %28

71:                                               ; preds = %28
  %72 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %73 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PV88080_REG_EVENT_A, align 4
  %76 = load i32, i32* @PV88080_E_VDD_FLT, align 4
  %77 = call i32 @regmap_write(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %146

81:                                               ; preds = %71
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %81, %22
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @PV88080_E_OVER_TEMP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %129, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PV88080_MAX_REGULATORS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %89
  %94 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %95 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %94, i32 0, i32 2
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %128

102:                                              ; preds = %93
  %103 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %104 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @regulator_lock(i32* %109)
  %111 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %112 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @REGULATOR_EVENT_OVER_TEMP, align 4
  %119 = call i32 @regulator_notifier_call_chain(i32* %117, i32 %118, i32* null)
  %120 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %121 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %120, i32 0, i32 2
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @regulator_unlock(i32* %126)
  br label %128

128:                                              ; preds = %102, %93
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %89

132:                                              ; preds = %89
  %133 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %134 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PV88080_REG_EVENT_A, align 4
  %137 = load i32, i32* @PV88080_E_OVER_TEMP, align 4
  %138 = call i32 @regmap_write(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %146

142:                                              ; preds = %132
  %143 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %83
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %153

146:                                              ; preds = %141, %80, %21
  %147 = load %struct.pv88080*, %struct.pv88080** %6, align 8
  %148 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @IRQ_NONE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %146, %144
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_lock(i32*) #1

declare dso_local i32 @regulator_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
