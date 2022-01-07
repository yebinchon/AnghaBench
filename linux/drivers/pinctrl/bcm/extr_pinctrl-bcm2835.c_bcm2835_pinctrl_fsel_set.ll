; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinctrl_fsel_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinctrl_fsel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32 }

@BCM2835_FSEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"read %08x (%u => %s)\0A\00", align 1
@bcm2835_functions = common dso_local global i32* null, align 8
@BCM2835_FSEL_GPIO_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"trans %08x (%u <= %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"write %08x (%u <= %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_pinctrl*, i32, i32)* @bcm2835_pinctrl_fsel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_pinctrl_fsel_set(%struct.bcm2835_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm2835_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @FSEL_REG(i32 %10)
  %12 = call i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl* %9, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @FSEL_SHIFT(i32 %14)
  %16 = ashr i32 %13, %15
  %17 = load i32, i32* @BCM2835_FSEL_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** @bcm2835_functions, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %102

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load i32, i32* @BCM2835_FSEL_MASK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @FSEL_SHIFT(i32 %44)
  %46 = shl i32 %43, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FSEL_SHIFT(i32 %51)
  %53 = shl i32 %50, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** @bcm2835_functions, align 8
  %62 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %65)
  %67 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @FSEL_REG(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bcm2835_gpio_wr(%struct.bcm2835_pinctrl* %67, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %42, %38, %34
  %73 = load i32, i32* @BCM2835_FSEL_MASK, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @FSEL_SHIFT(i32 %74)
  %76 = shl i32 %73, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @FSEL_SHIFT(i32 %81)
  %83 = shl i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %87 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** @bcm2835_functions, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90, i32 %95)
  %97 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @FSEL_REG(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @bcm2835_gpio_wr(%struct.bcm2835_pinctrl* %97, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %72, %33
  ret void
}

declare dso_local i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl*, i32) #1

declare dso_local i32 @FSEL_REG(i32) #1

declare dso_local i32 @FSEL_SHIFT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bcm2835_gpio_wr(%struct.bcm2835_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
