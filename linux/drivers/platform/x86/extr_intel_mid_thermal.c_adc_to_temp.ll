; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_adc_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_adc_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSIC_DIE_ADC_MIN = common dso_local global i32 0, align 4
@MSIC_DIE_ADC_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ADC_MIN = common dso_local global i32 0, align 4
@ADC_MAX = common dso_local global i32 0, align 4
@ADC_VAL0C = common dso_local global i32 0, align 4
@ADC_VAL20C = common dso_local global i32 0, align 4
@ADC_VAL40C = common dso_local global i32 0, align 4
@ADC_VAL60C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @adc_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_to_temp(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MSIC_DIE_ADC_MIN, align 4
  %14 = load i32, i32* @MSIC_DIE_ADC_MAX, align 4
  %15 = call i64 @is_valid_adc(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @to_msic_die_temp(i32 %18)
  %20 = mul nsw i32 %19, 1000
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %89

22:                                               ; preds = %11
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ADC_MIN, align 4
  %28 = load i32, i32* @ADC_MAX, align 4
  %29 = call i64 @is_valid_adc(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %89

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ADC_VAL0C, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 5
  %41 = sub nsw i32 177, %40
  store i32 %41, i32* %8, align 4
  br label %85

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ADC_VAL0C, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ADC_VAL20C, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = sdiv i32 %51, 8
  %53 = sub nsw i32 111, %52
  store i32 %53, i32* %8, align 4
  br label %84

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ADC_VAL20C, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ADC_VAL40C, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 10
  %65 = sub nsw i32 92, %64
  store i32 %65, i32* %8, align 4
  br label %83

66:                                               ; preds = %58, %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ADC_VAL40C, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ADC_VAL60C, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 10
  %77 = sub nsw i32 91, %76
  store i32 %77, i32* %8, align 4
  br label %82

78:                                               ; preds = %70, %66
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 6
  %81 = sub nsw i32 112, %80
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %31, %22, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @is_valid_adc(i32, i32, i32) #1

declare dso_local i32 @to_msic_die_temp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
