; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77980.c_r8a77980_pin_to_pocctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77980.c_r8a77980_pin_to_pocctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sh_pfc = type { i32 }

@pinmux_ioctrl_regs = common dso_local global %struct.TYPE_2__* null, align 8
@POCCTRL0 = common dso_local global i64 0, align 8
@POCCTRL1 = common dso_local global i64 0, align 8
@POCCTRL2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32, i32*)* @r8a77980_pin_to_pocctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a77980_pin_to_pocctrl(%struct.sh_pfc* %0, i32 %1, i32* %2) #0 {
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
  br label %94

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
  br label %94

37:                                               ; preds = %30, %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pinmux_ioctrl_regs, align 8
  %40 = load i64, i64* @POCCTRL1, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RCAR_GP_PIN(i32 2, i32 10)
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @RCAR_GP_PIN(i32 2, i32 16)
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 10
  store i32 %54, i32* %4, align 4
  br label %94

55:                                               ; preds = %48, %38
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @RCAR_GP_PIN(i32 2, i32 17)
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RCAR_GP_PIN(i32 2, i32 24)
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @RCAR_GP_PIN(i32 3, i32 0)
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @RCAR_GP_PIN(i32 3, i32 16)
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 7
  store i32 %73, i32* %4, align 4
  br label %94

74:                                               ; preds = %67, %63
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pinmux_ioctrl_regs, align 8
  %76 = load i64, i64* @POCCTRL2, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @RCAR_GP_PIN(i32 2, i32 25)
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @RCAR_GP_PIN(i32 2, i32 29)
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = sub i32 %89, 25
  store i32 %90, i32* %4, align 4
  br label %94

91:                                               ; preds = %84, %74
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %88, %71, %52, %34, %24
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @RCAR_GP_PIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
