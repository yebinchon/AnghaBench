; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_pin_check_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_pin_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_pinctrl = type { i32, i32*, i32 }
%struct.at91_pmx_pin = type { i64, i32, i32 }

@gpio_banks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: pin conf %d bank_id %d >= nbanks %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gpio_chips = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: pin conf %d bank_id %d not enabled\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_NB_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: pin conf %d pin_bank_id %d >= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: pin conf %d mux_id %d >= nmux %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: pin conf %d mux_id %d not supported for pio%c%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_pinctrl*, i8*, i32, %struct.at91_pmx_pin*)* @pin_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_check_config(%struct.at91_pinctrl* %0, i8* %1, i32 %2, %struct.at91_pmx_pin* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.at91_pinctrl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.at91_pmx_pin*, align 8
  %10 = alloca i32, align 4
  store %struct.at91_pinctrl* %0, %struct.at91_pinctrl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.at91_pmx_pin* %3, %struct.at91_pmx_pin** %9, align 8
  %11 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %12 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @gpio_banks, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %23 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* @gpio_banks, align 8
  %27 = call i32 (i32, i8*, i8*, i32, i32, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i32 %25, i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %140

30:                                               ; preds = %4
  %31 = load i32*, i32** @gpio_chips, align 8
  %32 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %33 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %30
  %39 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %40 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %45 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i32, i8*, i8*, i32, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43, i32 %47)
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %140

51:                                               ; preds = %30
  %52 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %53 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %59 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %64 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %67 = call i32 (i32, i8*, i8*, i32, i32, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %140

70:                                               ; preds = %51
  %71 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %72 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %140

76:                                               ; preds = %70
  %77 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %78 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %83 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %76
  %87 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %88 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %94 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, i8*, i32, i32, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %91, i32 %92, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %140

99:                                               ; preds = %76
  %100 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %101 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %104 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %107 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 %105, %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %110, %112
  %114 = getelementptr inbounds i32, i32* %102, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %117 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 1, %118
  %120 = and i32 %115, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %99
  %123 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %6, align 8
  %124 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %130 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 65
  %133 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %9, align 8
  %134 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, i8*, i32, i32, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %126, i32 %127, i32 %128, i64 %132, i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %140

139:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %122, %86, %75, %57, %38, %16
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
