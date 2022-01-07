; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_dpll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_dpll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe3_dpll_params = type { i32 }
%struct.ti_pipe3 = type { i32, i32, %struct.pipe3_dpll_map* }
%struct.pipe3_dpll_map = type { i64, %struct.pipe3_dpll_params }

@.str = private unnamed_addr constant [42 x i8] c"No DPLL configuration for %lu Hz SYS CLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe3_dpll_params* (%struct.ti_pipe3*)* @ti_pipe3_get_dpll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe3_dpll_params* @ti_pipe3_get_dpll_params(%struct.ti_pipe3* %0) #0 {
  %2 = alloca %struct.pipe3_dpll_params*, align 8
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pipe3_dpll_map*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %6 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %7 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %6, i32 0, i32 2
  %8 = load %struct.pipe3_dpll_map*, %struct.pipe3_dpll_map** %7, align 8
  store %struct.pipe3_dpll_map* %8, %struct.pipe3_dpll_map** %5, align 8
  %9 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %10 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load %struct.pipe3_dpll_map*, %struct.pipe3_dpll_map** %5, align 8
  %15 = getelementptr inbounds %struct.pipe3_dpll_map, %struct.pipe3_dpll_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.pipe3_dpll_map*, %struct.pipe3_dpll_map** %5, align 8
  %21 = getelementptr inbounds %struct.pipe3_dpll_map, %struct.pipe3_dpll_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.pipe3_dpll_map*, %struct.pipe3_dpll_map** %5, align 8
  %26 = getelementptr inbounds %struct.pipe3_dpll_map, %struct.pipe3_dpll_map* %25, i32 0, i32 1
  store %struct.pipe3_dpll_params* %26, %struct.pipe3_dpll_params** %2, align 8
  br label %37

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.pipe3_dpll_map*, %struct.pipe3_dpll_map** %5, align 8
  %30 = getelementptr inbounds %struct.pipe3_dpll_map, %struct.pipe3_dpll_map* %29, i32 1
  store %struct.pipe3_dpll_map* %30, %struct.pipe3_dpll_map** %5, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %33 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %35)
  store %struct.pipe3_dpll_params* null, %struct.pipe3_dpll_params** %2, align 8
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %2, align 8
  ret %struct.pipe3_dpll_params* %38
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
