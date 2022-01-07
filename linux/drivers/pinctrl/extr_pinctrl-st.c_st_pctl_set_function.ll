; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_set_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pio_control = type { %struct.regmap_field* }
%struct.regmap_field = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pio_control*, i32, i32)* @st_pctl_set_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pctl_set_function(%struct.st_pio_control* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.st_pio_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st_pio_control* %0, %struct.st_pio_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %12 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %11, i32 0, i32 0
  %13 = load %struct.regmap_field*, %struct.regmap_field** %12, align 8
  store %struct.regmap_field* %13, %struct.regmap_field** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @st_gpio_pin(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %19 = icmp ne %struct.regmap_field* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %23 = call i32 @regmap_field_read(%struct.regmap_field* %22, i32* %8)
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 15, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regmap_field_write(%struct.regmap_field* %34, i32 %35)
  br label %37

37:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @st_gpio_pin(i32) #1

declare dso_local i32 @regmap_field_read(%struct.regmap_field*, i32*) #1

declare dso_local i32 @regmap_field_write(%struct.regmap_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
