; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77970.c_r8a77970_pin_to_pocctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77970.c_r8a77970_pin_to_pocctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sh_pfc = type { i32 }

@pinmux_ioctrl_regs = common dso_local global %struct.TYPE_2__* null, align 8
@POCCTRL0 = common dso_local global i64 0, align 8
@POCCTRL1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32, i32*)* @r8a77970_pin_to_pocctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a77970_pin_to_pocctrl(%struct.sh_pfc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_pfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 31
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pinmux_ioctrl_regs, align 8
  %12 = load i64, i64* @POCCTRL0, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RCAR_GP_PIN(i32 0, i32 0)
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @RCAR_GP_PIN(i32 0, i32 21)
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @RCAR_GP_PIN(i32 2, i32 0)
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @RCAR_GP_PIN(i32 2, i32 9)
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 22
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %30, %26
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pinmux_ioctrl_regs, align 8
  %39 = load i64, i64* @POCCTRL1, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @RCAR_GP_PIN(i32 2, i32 10)
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @RCAR_GP_PIN(i32 2, i32 16)
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 10
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %47, %37
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RCAR_GP_PIN(i32 3, i32 0)
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @RCAR_GP_PIN(i32 3, i32 16)
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 7
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %58, %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %62, %51, %34, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @RCAR_GP_PIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
