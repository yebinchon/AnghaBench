; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_calc_coefs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_calc_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TJ_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gen3_thermal_tsc*, i32*, i32*, i32)* @rcar_gen3_thermal_calc_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_gen3_thermal_calc_coefs(%struct.rcar_gen3_thermal_tsc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_gen3_thermal_tsc* %0, %struct.rcar_gen3_thermal_tsc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = mul nsw i32 %15, 157
  %17 = call i32 @FIXPT_INT(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = sdiv i32 %17, %24
  %26 = load i32, i32* @TJ_3, align 4
  %27 = call i32 @FIXPT_INT(i32 %26)
  %28 = add nsw i32 %25, %27
  %29 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %30 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = call i32 @FIXPT_INT(i32 %37)
  %39 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %40 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TJ_3, align 4
  %43 = call i32 @FIXPT_INT(i32 %42)
  %44 = sub nsw i32 %41, %43
  %45 = call i8* @FIXPT_DIV(i32 %38, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %48 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FIXPT_INT(i32 %52)
  %54 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %55 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TJ_3, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sub nsw i32 %53, %59
  %61 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %62 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = call i32 @FIXPT_INT(i32 %70)
  %72 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %73 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @FIXPT_INT(i32 %75)
  %77 = sub nsw i32 %74, %76
  %78 = call i8* @FIXPT_DIV(i32 %71, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %81 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @FIXPT_INT(i32 %85)
  %87 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %88 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sub nsw i32 %86, %92
  %94 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %5, align 8
  %95 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  ret void
}

declare dso_local i32 @FIXPT_INT(i32) #1

declare dso_local i8* @FIXPT_DIV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
