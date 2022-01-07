; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_host_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_host_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_pcie_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_pcie_priv*)* @uniphier_pcie_host_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pcie_host_enable(%struct.uniphier_pcie_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_pcie_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.uniphier_pcie_priv* %0, %struct.uniphier_pcie_priv** %3, align 8
  %5 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %6 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %15 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reset_control_deassert(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %48

21:                                               ; preds = %13
  %22 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %23 = call i32 @uniphier_pcie_init_rc(%struct.uniphier_pcie_priv* %22)
  %24 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %25 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @phy_init(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %33 = call i32 @uniphier_pcie_wait_rc(%struct.uniphier_pcie_priv* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %54

38:                                               ; preds = %36
  %39 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %40 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @phy_exit(i32 %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %45 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @reset_control_assert(i32 %46)
  br label %48

48:                                               ; preds = %43, %20
  %49 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %3, align 8
  %50 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %37, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @uniphier_pcie_init_rc(%struct.uniphier_pcie_priv*) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @uniphier_pcie_wait_rc(%struct.uniphier_pcie_priv*) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
