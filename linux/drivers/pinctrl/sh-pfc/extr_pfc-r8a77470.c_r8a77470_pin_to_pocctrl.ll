; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77470.c_r8a77470_pin_to_pocctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77470.c_r8a77470_pin_to_pocctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32, i32*)* @r8a77470_pin_to_pocctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a77470_pin_to_pocctrl(%struct.sh_pfc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 -435814224, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @RCAR_GP_PIN(i32 0, i32 5)
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @RCAR_GP_PIN(i32 0, i32 10)
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %14, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @RCAR_GP_PIN(i32 0, i32 13)
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @RCAR_GP_PIN(i32 0, i32 22)
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RCAR_GP_PIN(i32 4, i32 14)
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @RCAR_GP_PIN(i32 4, i32 19)
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @RCAR_GP_PIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
