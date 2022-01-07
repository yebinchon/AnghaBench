; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c___nmk_gpio_set_mode_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c___nmk_gpio_set_mode_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, i32, i64, i32 (i32)* }

@NMK_GPIO_RWIMSC = common dso_local global i64 0, align 8
@NMK_GPIO_FWIMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nmk_gpio_chip*, i32, i32, i32)* @__nmk_gpio_set_mode_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nmk_gpio_set_mode_safe(%struct.nmk_gpio_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nmk_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nmk_gpio_chip* %0, %struct.nmk_gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %21, i32 0, i32 3
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @BIT(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NMK_GPIO_RWIMSC, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %43 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NMK_GPIO_FWIMSC, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %49 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %48, i32 0, i32 3
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = call i32 %50(i32 1)
  br label %52

52:                                               ; preds = %25, %20, %4
  %53 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @__nmk_gpio_set_mode(%struct.nmk_gpio_chip* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %61 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %60, i32 0, i32 3
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = icmp ne i32 (i32)* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %66 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %65, i32 0, i32 3
  %67 = load i32 (i32)*, i32 (i32)** %66, align 8
  %68 = call i32 %67(i32 0)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %71 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NMK_GPIO_RWIMSC, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %78 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NMK_GPIO_FWIMSC, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  br label %83

83:                                               ; preds = %64, %59, %52
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__nmk_gpio_set_mode(%struct.nmk_gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
