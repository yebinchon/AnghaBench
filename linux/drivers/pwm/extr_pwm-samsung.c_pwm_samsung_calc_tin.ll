; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_calc_tin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_calc_tin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pwm_chip = type { %struct.TYPE_2__, %struct.clk*, %struct.clk*, %struct.samsung_pwm_variant }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }
%struct.samsung_pwm_variant = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"tclk of PWM %d is inoperational, using tdiv\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tin parent at %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.samsung_pwm_chip*, i32, i64)* @pwm_samsung_calc_tin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_samsung_calc_tin(%struct.samsung_pwm_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.samsung_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.samsung_pwm_variant*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  store %struct.samsung_pwm_chip* %0, %struct.samsung_pwm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %12, i32 0, i32 3
  store %struct.samsung_pwm_variant* %13, %struct.samsung_pwm_variant** %8, align 8
  %14 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pwm_samsung_is_tdiv(%struct.samsung_pwm_chip* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %23 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %22, i32 0, i32 2
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %27 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %26, i32 0, i32 1
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi %struct.clk* [ %24, %21 ], [ %28, %25 ]
  store %struct.clk* %30, %struct.clk** %10, align 8
  %31 = load %struct.clk*, %struct.clk** %10, align 8
  %32 = call i32 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.clk*, %struct.clk** %10, align 8
  %36 = call i64 @clk_get_rate(%struct.clk* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %101

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %44 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %3
  %50 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @pwm_samsung_get_tin_rate(%struct.samsung_pwm_chip* %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %54 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.samsung_pwm_variant*, %struct.samsung_pwm_variant** %8, align 8
  %60 = getelementptr inbounds %struct.samsung_pwm_variant, %struct.samsung_pwm_variant* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %63, label %87

63:                                               ; preds = %49
  %64 = load %struct.samsung_pwm_variant*, %struct.samsung_pwm_variant** %8, align 8
  %65 = getelementptr inbounds %struct.samsung_pwm_variant, %struct.samsung_pwm_variant* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %83, %63
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.samsung_pwm_variant*, %struct.samsung_pwm_variant** %8, align 8
  %73 = getelementptr inbounds %struct.samsung_pwm_variant, %struct.samsung_pwm_variant* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = lshr i64 %71, %77
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %86

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %67

86:                                               ; preds = %81, %67
  br label %91

87:                                               ; preds = %49
  %88 = load %struct.samsung_pwm_variant*, %struct.samsung_pwm_variant** %8, align 8
  %89 = getelementptr inbounds %struct.samsung_pwm_variant, %struct.samsung_pwm_variant* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %86
  %92 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = call i32 @pwm_samsung_set_divisor(%struct.samsung_pwm_chip* %92, i32 %93, i32 %95)
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = lshr i64 %97, %99
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %91, %39
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i32 @pwm_samsung_is_tdiv(%struct.samsung_pwm_chip*, i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @pwm_samsung_get_tin_rate(%struct.samsung_pwm_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @pwm_samsung_set_divisor(%struct.samsung_pwm_chip*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
