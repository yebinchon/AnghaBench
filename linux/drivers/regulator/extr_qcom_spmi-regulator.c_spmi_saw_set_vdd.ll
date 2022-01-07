; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_saw_set_vdd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_saw_set_vdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saw_regmap = common dso_local global i32 0, align 4
@SAW3_AVS_CTL = common dso_local global i32 0, align 4
@SAW3_VCTL = common dso_local global i32 0, align 4
@SAW3_SPM_PMIC_DATA_3 = common dso_local global i32 0, align 4
@SAW3_VCTL_CLEAR_MASK = common dso_local global i32 0, align 4
@SAW3_AVS_CTL_EN_MASK = common dso_local global i32 0, align 4
@SAW3_AVS_CTL_TGGL_MASK = common dso_local global i32 0, align 4
@SAW3_RST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SAW3_PMIC_STS = common dso_local global i32 0, align 4
@SAW3_VCTL_DATA_MASK = common dso_local global i32 0, align 4
@SAW3_AVS_CTL_CLEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spmi_saw_set_vdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spmi_saw_set_vdd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @saw_regmap, align 4
  %14 = load i32, i32* @SAW3_AVS_CTL, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  %16 = load i32, i32* @saw_regmap, align 4
  %17 = load i32, i32* @SAW3_VCTL, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %3)
  %19 = load i32, i32* @saw_regmap, align 4
  %20 = load i32, i32* @SAW3_SPM_PMIC_DATA_3, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %4)
  %22 = load i32, i32* @SAW3_VCTL_CLEAR_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SAW3_VCTL_CLEAR_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @SAW3_AVS_CTL_EN_MASK, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %1
  %44 = load i32, i32* @SAW3_AVS_CTL_TGGL_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @saw_regmap, align 4
  %49 = load i32, i32* @SAW3_AVS_CTL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %1
  %53 = load i32, i32* @saw_regmap, align 4
  %54 = load i32, i32* @SAW3_RST, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 1)
  %56 = load i32, i32* @saw_regmap, align 4
  %57 = load i32, i32* @SAW3_VCTL, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @saw_regmap, align 4
  %61 = load i32, i32* @SAW3_SPM_PMIC_DATA_3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @regmap_write(i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* @jiffies, align 8
  %65 = call i64 @usecs_to_jiffies(i32 100)
  %66 = add i64 %64, %65
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %81, %52
  %68 = load i32, i32* @saw_regmap, align 4
  %69 = load i32, i32* @SAW3_PMIC_STS, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %6)
  %71 = load i32, i32* @SAW3_VCTL_DATA_MASK, align 4
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %86

79:                                               ; preds = %67
  %80 = call i32 (...) @cpu_relax()
  br label %81

81:                                               ; preds = %79
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @time_before(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %67, label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 63
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @SAW3_AVS_CTL_CLEAR_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 4
  %98 = shl i32 %97, 10
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 %101, 17
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @SAW3_AVS_CTL_TGGL_MASK, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @saw_regmap, align 4
  %109 = load i32, i32* @SAW3_AVS_CTL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @regmap_write(i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %89, %86
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
