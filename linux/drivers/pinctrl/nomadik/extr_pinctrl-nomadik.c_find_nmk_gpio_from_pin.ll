; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_find_nmk_gpio_from_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_find_nmk_gpio_from_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NMK_MAX_BANKS = common dso_local global i32 0, align 4
@nmk_gpio_chips = common dso_local global %struct.nmk_gpio_chip** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nmk_gpio_chip* (i32)* @find_nmk_gpio_from_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nmk_gpio_chip* @find_nmk_gpio_from_pin(i32 %0) #0 {
  %2 = alloca %struct.nmk_gpio_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nmk_gpio_chip*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NMK_MAX_BANKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = load %struct.nmk_gpio_chip**, %struct.nmk_gpio_chip*** @nmk_gpio_chips, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %11, i64 %13
  %15 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %14, align 8
  store %struct.nmk_gpio_chip* %15, %struct.nmk_gpio_chip** %5, align 8
  %16 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %17 = icmp ne %struct.nmk_gpio_chip* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %41

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %31, %35
  %37 = icmp ult i32 %27, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  store %struct.nmk_gpio_chip* %39, %struct.nmk_gpio_chip** %2, align 8
  br label %45

40:                                               ; preds = %26, %19
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %6

44:                                               ; preds = %6
  store %struct.nmk_gpio_chip* null, %struct.nmk_gpio_chip** %2, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  ret %struct.nmk_gpio_chip* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
