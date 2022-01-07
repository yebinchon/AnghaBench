; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a7795.c_r8a7795_pin_to_pocctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a7795.c_r8a7795_pin_to_pocctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sh_pfc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pinmux_ioctrl_regs = common dso_local global %struct.TYPE_2__* null, align 8
@POCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32, i32*)* @r8a7795_pin_to_pocctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a7795_pin_to_pocctrl(%struct.sh_pfc* %0, i32 %1, i32* %2) #0 {
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
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pinmux_ioctrl_regs, align 8
  %11 = load i64, i64* @POCCTRL, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @RCAR_GP_PIN(i32 3, i32 0)
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @RCAR_GP_PIN(i32 3, i32 11)
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 31
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19, %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RCAR_GP_PIN(i32 4, i32 0)
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @RCAR_GP_PIN(i32 4, i32 17)
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 31
  %37 = add i32 %36, 12
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %30, %26
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @RCAR_GP_PIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
