; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_gpio = type { i32 }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PM8XXX_GPIO_BIAS_PU_1P5_30 = common dso_local global i32 0, align 4
@PM8XXX_GPIO_BIAS_PU_30 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*)* @pm8xxx_pin_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_populate(%struct.pm8xxx_gpio* %0, %struct.pm8xxx_pin_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8xxx_gpio*, align 8
  %5 = alloca %struct.pm8xxx_pin_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pm8xxx_gpio* %0, %struct.pm8xxx_gpio** %4, align 8
  store %struct.pm8xxx_pin_data* %1, %struct.pm8xxx_pin_data** %5, align 8
  %7 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %8 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %9 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %7, %struct.pm8xxx_pin_data* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %123

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 1
  %17 = and i32 %16, 7
  %18 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %19 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %21 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %22 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %20, %struct.pm8xxx_pin_data* %21, i32 1)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %123

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 2
  %30 = and i32 %29, 3
  %31 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %32 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @BIT(i32 1)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BIT(i32 0)
  %44 = and i32 %42, %43
  %45 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %46 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %48 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %49 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %47, %struct.pm8xxx_pin_data* %48, i32 2)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %27
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %123

54:                                               ; preds = %27
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 1
  %57 = and i32 %56, 7
  %58 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %61 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PM8XXX_GPIO_BIAS_PU_1P5_30, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %67 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %70 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load i32, i32* @PM8XXX_GPIO_BIAS_PU_30, align 4
  %73 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %74 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %77 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %78 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %76, %struct.pm8xxx_pin_data* %77, i32 3)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %123

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 2
  %86 = and i32 %85, 3
  %87 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %88 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BIT(i32 0)
  %91 = and i32 %89, %90
  %92 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %93 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %95 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %96 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %94, %struct.pm8xxx_pin_data* %95, i32 4)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %123

101:                                              ; preds = %83
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 1
  %104 = and i32 %103, 7
  %105 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %106 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %4, align 8
  %108 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %109 = call i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %107, %struct.pm8xxx_pin_data* %108, i32 5)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %123

114:                                              ; preds = %101
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @BIT(i32 3)
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %122 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %114, %112, %99, %81, %52, %25, %12
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
