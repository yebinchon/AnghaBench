; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_wkup_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_wkup_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.irq_chip = type { i32 }
%struct.exynos_irq_chip = type { i64 }
%struct.samsung_pin_bank = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"wake %s for irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @exynos_wkup_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_wkup_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca %struct.exynos_irq_chip*, align 8
  %7 = alloca %struct.samsung_pin_bank*, align 8
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %5, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %12 = call %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip* %11)
  store %struct.exynos_irq_chip* %12, %struct.exynos_irq_chip** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.samsung_pin_bank* %14, %struct.samsung_pin_bank** %7, align 8
  %15 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %7, align 8
  %16 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 2, %17
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %6, align 8
  %38 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %48

41:                                               ; preds = %2
  %42 = load i64, i64* %8, align 8
  %43 = xor i64 %42, -1
  %44 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %6, align 8
  %45 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %41, %35
  ret i32 0
}

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip*) #1

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
