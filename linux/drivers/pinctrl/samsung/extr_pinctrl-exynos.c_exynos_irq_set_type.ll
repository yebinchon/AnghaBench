; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 }
%struct.exynos_irq_chip = type { i64 }
%struct.samsung_pin_bank = type { i64, i64 }

@EXYNOS_EINT_CON_LEN = common dso_local global i32 0, align 4
@EXYNOS_EINT_EDGE_RISING = common dso_local global i32 0, align 4
@EXYNOS_EINT_EDGE_FALLING = common dso_local global i32 0, align 4
@EXYNOS_EINT_EDGE_BOTH = common dso_local global i32 0, align 4
@EXYNOS_EINT_LEVEL_HIGH = common dso_local global i32 0, align 4
@EXYNOS_EINT_LEVEL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unsupported external interrupt type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@EXYNOS_EINT_CON_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @exynos_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.exynos_irq_chip*, align 8
  %8 = alloca %struct.samsung_pin_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %13)
  store %struct.irq_chip* %14, %struct.irq_chip** %6, align 8
  %15 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %16 = call %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip* %15)
  store %struct.exynos_irq_chip* %16, %struct.exynos_irq_chip** %7, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %17)
  store %struct.samsung_pin_bank* %18, %struct.samsung_pin_bank** %8, align 8
  %19 = load i32, i32* @EXYNOS_EINT_CON_LEN, align 4
  %20 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %7, align 8
  %25 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %28 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %42 [
    i32 130, label %32
    i32 131, label %34
    i32 132, label %36
    i32 129, label %38
    i32 128, label %40
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* @EXYNOS_EINT_EDGE_RISING, align 4
  store i32 %33, i32* %11, align 4
  br label %46

34:                                               ; preds = %2
  %35 = load i32, i32* @EXYNOS_EINT_EDGE_FALLING, align 4
  store i32 %35, i32* %11, align 4
  br label %46

36:                                               ; preds = %2
  %37 = load i32, i32* @EXYNOS_EINT_EDGE_BOTH, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @EXYNOS_EINT_LEVEL_HIGH, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %2
  %41 = load i32, i32* @EXYNOS_EINT_LEVEL_LOW, align 4
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %2
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %83

46:                                               ; preds = %40, %38, %36, %34, %32
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 132
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %52 = load i32, i32* @handle_edge_irq, align 4
  %53 = call i32 @irq_set_handler_locked(%struct.irq_data* %51, i32 %52)
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %56 = load i32, i32* @handle_level_irq, align 4
  %57 = call i32 @irq_set_handler_locked(%struct.irq_data* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %60 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @EXYNOS_EINT_CON_MASK, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %78 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %58, %42
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip*) #1

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
