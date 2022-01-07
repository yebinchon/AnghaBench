; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_gpio_bank = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_gpio_bank*, i32, i32)* @st_gpio_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_gpio_direction(%struct.st_gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.st_gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_gpio_bank* %0, %struct.st_gpio_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @st_gpio_pin(i32 %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %4, align 8
  %24 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @REG_PIO_SET_PC(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @writel(i32 %22, i64 %28)
  br label %40

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %4, align 8
  %34 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @REG_PIO_CLR_PC(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  br label %40

40:                                               ; preds = %30, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  ret void
}

declare dso_local i32 @st_gpio_pin(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_PIO_SET_PC(i32) #1

declare dso_local i64 @REG_PIO_CLR_PC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
