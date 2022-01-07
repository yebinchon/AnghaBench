; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_muxregs_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_muxregs_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_pmx = type { i32 }
%struct.spear_muxreg = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spear_pmx*, %struct.spear_muxreg*, i64, i32)* @muxregs_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muxregs_endisable(%struct.spear_pmx* %0, %struct.spear_muxreg* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.spear_pmx*, align 8
  %6 = alloca %struct.spear_muxreg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spear_muxreg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.spear_pmx* %0, %struct.spear_pmx** %5, align 8
  store %struct.spear_muxreg* %1, %struct.spear_muxreg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %57, %4
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load %struct.spear_muxreg*, %struct.spear_muxreg** %6, align 8
  %19 = load i64, i64* %12, align 8
  %20 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %18, i64 %19
  store %struct.spear_muxreg* %20, %struct.spear_muxreg** %9, align 8
  %21 = load %struct.spear_pmx*, %struct.spear_pmx** %5, align 8
  %22 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %23 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @pmx_readl(%struct.spear_pmx* %21, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %27 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %10, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %36 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  br label %43

38:                                               ; preds = %17
  %39 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %40 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = xor i64 %41, -1
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %45 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* %10, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load %struct.spear_pmx*, %struct.spear_pmx** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.spear_muxreg*, %struct.spear_muxreg** %9, align 8
  %54 = getelementptr inbounds %struct.spear_muxreg, %struct.spear_muxreg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pmx_writel(%struct.spear_pmx* %51, i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %43
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %13

60:                                               ; preds = %13
  ret void
}

declare dso_local i64 @pmx_readl(%struct.spear_pmx*, i32) #1

declare dso_local i32 @pmx_writel(%struct.spear_pmx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
