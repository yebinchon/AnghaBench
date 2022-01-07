; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pmx_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pmx_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.u300_pmx_mask* }
%struct.u300_pmx_mask = type { i32, i32 }
%struct.u300_pmx = type { i64 }

@u300_pmx_functions = common dso_local global %struct.TYPE_2__* null, align 8
@u300_pmx_registers = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.u300_pmx*, i32, i32)* @u300_pmx_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u300_pmx_endisable(%struct.u300_pmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.u300_pmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.u300_pmx_mask*, align 8
  store %struct.u300_pmx* %0, %struct.u300_pmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @u300_pmx_functions, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.u300_pmx_mask*, %struct.u300_pmx_mask** %16, align 8
  store %struct.u300_pmx_mask* %17, %struct.u300_pmx_mask** %11, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %69, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i64*, i64** @u300_pmx_registers, align 8
  %21 = call i32 @ARRAY_SIZE(i64* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.u300_pmx_mask*, %struct.u300_pmx_mask** %11, align 8
  %28 = getelementptr inbounds %struct.u300_pmx_mask, %struct.u300_pmx_mask* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.u300_pmx_mask*, %struct.u300_pmx_mask** %11, align 8
  %33 = getelementptr inbounds %struct.u300_pmx_mask, %struct.u300_pmx_mask* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %39 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @u300_pmx_registers, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = call i32 @readw(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %57 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @u300_pmx_registers, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i32 @writew(i32 %55, i64 %64)
  br label %66

66:                                               ; preds = %37, %31
  %67 = load %struct.u300_pmx_mask*, %struct.u300_pmx_mask** %11, align 8
  %68 = getelementptr inbounds %struct.u300_pmx_mask, %struct.u300_pmx_mask* %67, i32 1
  store %struct.u300_pmx_mask* %68, %struct.u300_pmx_mask** %11, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %18

72:                                               ; preds = %18
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
