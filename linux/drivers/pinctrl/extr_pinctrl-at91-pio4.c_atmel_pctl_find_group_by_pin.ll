; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pctl_find_group_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pctl_find_group_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_group = type { i32 }
%struct.pinctrl_dev = type { i32 }
%struct.atmel_pioctrl = type { i32, %struct.atmel_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_group* (%struct.pinctrl_dev*, i32)* @atmel_pctl_find_group_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_group* @atmel_pctl_find_group_by_pin(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_group*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_pioctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %10 = call %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.atmel_pioctrl* %10, %struct.atmel_pioctrl** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %14 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %19 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %18, i32 0, i32 1
  %20 = load %struct.atmel_group*, %struct.atmel_group** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %20, i64 %22
  store %struct.atmel_group* %23, %struct.atmel_group** %8, align 8
  %24 = load %struct.atmel_group*, %struct.atmel_group** %8, align 8
  %25 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load %struct.atmel_group*, %struct.atmel_group** %8, align 8
  store %struct.atmel_group* %30, %struct.atmel_group** %3, align 8
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %11
  store %struct.atmel_group* null, %struct.atmel_group** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.atmel_group*, %struct.atmel_group** %3, align 8
  ret %struct.atmel_group* %37
}

declare dso_local %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
