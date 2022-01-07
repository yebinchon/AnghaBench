; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_make_drv_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_make_drv_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_pin_private = type { i32 }

@MADERA_GP1_DRV_STR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%u mA not a valid drive strength\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_pin_private*, i32)* @madera_pin_make_drv_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_pin_make_drv_str(%struct.madera_pin_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.madera_pin_private*, align 8
  %5 = alloca i32, align 4
  store %struct.madera_pin_private* %0, %struct.madera_pin_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 4, label %7
    i32 8, label %8
  ]

7:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

8:                                                ; preds = %2
  %9 = load i32, i32* @MADERA_GP1_DRV_STR_SHIFT, align 4
  %10 = shl i32 2, %9
  store i32 %10, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11
  %13 = load %struct.madera_pin_private*, %struct.madera_pin_private** %4, align 8
  %14 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %12, %8, %7
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
