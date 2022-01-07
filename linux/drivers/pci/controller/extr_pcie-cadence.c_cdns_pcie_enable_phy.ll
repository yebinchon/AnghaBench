; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_enable_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_enable_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns_pcie_enable_phy(%struct.cdns_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns_pcie* %0, %struct.cdns_pcie** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_init(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phy_power_on(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %37 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @phy_exit(i32 %42)
  br label %49

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %73

49:                                               ; preds = %35, %23
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %56 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @phy_power_off(i32 %61)
  %63 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %64 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @phy_exit(i32 %69)
  br label %50

71:                                               ; preds = %50
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %48
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
