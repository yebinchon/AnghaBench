; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_clk_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_clk_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirin_pcie = type { i32, i32, i32, i32, i32 }

@REF_CLK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kirin_pcie*, i32)* @kirin_pcie_clk_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_pcie_clk_ctrl(%struct.kirin_pcie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kirin_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kirin_pcie* %0, %struct.kirin_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REF_CLK_FREQ, align 4
  %15 = call i32 @clk_set_rate(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %10
  %21 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %22 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %31 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %82

37:                                               ; preds = %29
  %38 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %39 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %77

45:                                               ; preds = %37
  %46 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %47 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %72

53:                                               ; preds = %45
  %54 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %55 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_prepare_enable(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %67

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %88

62:                                               ; preds = %9
  %63 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %64 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clk_disable_unprepare(i32 %65)
  br label %67

67:                                               ; preds = %62, %60
  %68 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %69 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_disable_unprepare(i32 %70)
  br label %72

72:                                               ; preds = %67, %52
  %73 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %74 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_disable_unprepare(i32 %75)
  br label %77

77:                                               ; preds = %72, %44
  %78 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %79 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  br label %82

82:                                               ; preds = %77, %36
  %83 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %84 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @clk_disable_unprepare(i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %61, %27, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
