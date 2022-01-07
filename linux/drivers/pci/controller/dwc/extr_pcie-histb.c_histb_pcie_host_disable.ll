; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_host_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_host_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histb_pcie = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.histb_pcie*)* @histb_pcie_host_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @histb_pcie_host_disable(%struct.histb_pcie* %0) #0 {
  %2 = alloca %struct.histb_pcie*, align 8
  store %struct.histb_pcie* %0, %struct.histb_pcie** %2, align 8
  %3 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %4 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @reset_control_assert(i32 %5)
  %7 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @reset_control_assert(i32 %9)
  %11 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %12 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @reset_control_assert(i32 %13)
  %15 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %16 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %20 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %24 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  %27 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %28 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %32 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @gpio_is_valid(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %38 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gpio_set_value_cansleep(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %43 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.histb_pcie*, %struct.histb_pcie** %2, align 8
  %48 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @regulator_disable(i64 %49)
  br label %51

51:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
