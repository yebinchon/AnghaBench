; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_pinmux_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_pinmux_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sirfsoc_padmux* }
%struct.sirfsoc_padmux = type { i32, i32, i32, i64, %struct.sirfsoc_muxmask* }
%struct.sirfsoc_muxmask = type { i32, i32 }
%struct.sirfsoc_pmx = type { i64, i64 }

@sirfsoc_pmx_functions = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_pmx*, i32, i32)* @sirfsoc_pinmux_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_pinmux_endisable(%struct.sirfsoc_pmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sirfsoc_pmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sirfsoc_padmux*, align 8
  %9 = alloca %struct.sirfsoc_muxmask*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sirfsoc_pmx* %0, %struct.sirfsoc_pmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sirfsoc_pmx_functions, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %16, align 8
  store %struct.sirfsoc_padmux* %17, %struct.sirfsoc_padmux** %8, align 8
  %18 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %18, i32 0, i32 4
  %20 = load %struct.sirfsoc_muxmask*, %struct.sirfsoc_muxmask** %19, align 8
  store %struct.sirfsoc_muxmask* %20, %struct.sirfsoc_muxmask** %9, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %75, %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %4, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sirfsoc_muxmask*, %struct.sirfsoc_muxmask** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %31, i64 %33
  %35 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @SIRFSOC_GPIO_PAD_EN(i32 %36)
  %38 = add nsw i64 %30, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.sirfsoc_muxmask*, %struct.sirfsoc_muxmask** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %44, i64 %46
  %48 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %43, %50
  store i32 %51, i32* %10, align 4
  br label %61

52:                                               ; preds = %27
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sirfsoc_muxmask*, %struct.sirfsoc_muxmask** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %54, i64 %56
  %58 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %53, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %52, %42
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %4, align 8
  %64 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sirfsoc_muxmask*, %struct.sirfsoc_muxmask** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %66, i64 %68
  %70 = getelementptr inbounds %struct.sirfsoc_muxmask, %struct.sirfsoc_muxmask* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @SIRFSOC_GPIO_PAD_EN(i32 %71)
  %73 = add nsw i64 %65, %72
  %74 = call i32 @writel(i32 %62, i64 %73)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %21

78:                                               ; preds = %21
  %79 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %4, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %91 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = call i32 @readl(i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %95, %99
  %101 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %102 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %100, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %4, align 8
  %107 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sirfsoc_padmux*, %struct.sirfsoc_padmux** %8, align 8
  %110 = getelementptr inbounds %struct.sirfsoc_padmux, %struct.sirfsoc_padmux* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = call i32 @writel(i32 %105, i64 %112)
  br label %114

114:                                              ; preds = %86, %83, %78
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SIRFSOC_GPIO_PAD_EN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
