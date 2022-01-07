; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sbsm_data = type { i32 }

@SBSM_CMD_BATSYSSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sbsm_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbsm_data*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.sbsm_data* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.sbsm_data* %9, %struct.sbsm_data** %6, align 8
  %10 = load %struct.sbsm_data*, %struct.sbsm_data** %6, align 8
  %11 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SBSM_CMD_BATSYSSTATE, align 4
  %14 = call i32 @sbsm_read_word(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.sbsm_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @sbsm_read_word(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
