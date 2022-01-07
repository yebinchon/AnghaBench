; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_input_disable_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_input_disable_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas7_pmx = type { i64* }
%struct.atlas7_pad_mux = type { i32, i32, i64, i64 }

@DI_MASK = common dso_local global i32 0, align 4
@BANK_DS = common dso_local global i64 0, align 8
@DI_ENABLE = common dso_local global i32 0, align 4
@DIV_MASK = common dso_local global i32 0, align 4
@DIV_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atlas7_pmx*, %struct.atlas7_pad_mux*)* @__atlas7_pmx_pin_input_disable_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__atlas7_pmx_pin_input_disable_clr(%struct.atlas7_pmx* %0, %struct.atlas7_pad_mux* %1) #0 {
  %3 = alloca %struct.atlas7_pmx*, align 8
  %4 = alloca %struct.atlas7_pad_mux*, align 8
  store %struct.atlas7_pmx* %0, %struct.atlas7_pmx** %3, align 8
  store %struct.atlas7_pad_mux* %1, %struct.atlas7_pad_mux** %4, align 8
  %5 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %6 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %81

9:                                                ; preds = %2
  %10 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %11 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %9
  %15 = load i32, i32* @DI_MASK, align 4
  %16 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %17 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %15, %18
  %20 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %3, align 8
  %21 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @BANK_DS, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %27 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @CLR_REG(i64 %28)
  %30 = add nsw i64 %25, %29
  %31 = call i32 @writel(i32 %19, i64 %30)
  %32 = load i32, i32* @DI_ENABLE, align 4
  %33 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %34 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %32, %35
  %37 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %3, align 8
  %38 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @BANK_DS, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %44 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @writel(i32 %36, i64 %46)
  %48 = load i32, i32* @DIV_MASK, align 4
  %49 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %50 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %48, %51
  %53 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %3, align 8
  %54 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @BANK_DS, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %60 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @CLR_REG(i64 %61)
  %63 = add nsw i64 %58, %62
  %64 = call i32 @writel(i32 %52, i64 %63)
  %65 = load i32, i32* @DIV_ENABLE, align 4
  %66 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %67 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %65, %68
  %70 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %3, align 8
  %71 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @BANK_DS, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %4, align 8
  %77 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = call i32 @writel(i32 %69, i64 %79)
  br label %81

81:                                               ; preds = %14, %9, %2
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CLR_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
