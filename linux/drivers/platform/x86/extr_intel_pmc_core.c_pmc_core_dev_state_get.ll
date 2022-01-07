; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_core.c_pmc_core_dev_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_core.c_pmc_core_dev_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_dev = type { %struct.pmc_reg_map* }
%struct.pmc_reg_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @pmc_core_dev_state_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_core_dev_state_get(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pmc_dev*, align 8
  %6 = alloca %struct.pmc_reg_map*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.pmc_dev*
  store %struct.pmc_dev* %9, %struct.pmc_dev** %5, align 8
  %10 = load %struct.pmc_dev*, %struct.pmc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %10, i32 0, i32 0
  %12 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %11, align 8
  store %struct.pmc_reg_map* %12, %struct.pmc_reg_map** %6, align 8
  %13 = load %struct.pmc_dev*, %struct.pmc_dev** %5, align 8
  %14 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %6, align 8
  %15 = getelementptr inbounds %struct.pmc_reg_map, %struct.pmc_reg_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pmc_core_reg_read(%struct.pmc_dev* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pmc_core_adjust_slp_s0_step(i32 %18)
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  ret i32 0
}

declare dso_local i32 @pmc_core_reg_read(%struct.pmc_dev*, i32) #1

declare dso_local i32 @pmc_core_adjust_slp_s0_step(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
