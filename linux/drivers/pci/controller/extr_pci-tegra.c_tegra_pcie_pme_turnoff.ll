; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_pme_turnoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_pme_turnoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, %struct.tegra_pcie* }
%struct.tegra_pcie = type { i32, i64, %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@AFI_PCIE_PME = common dso_local global i64 0, align 8
@PME_ACK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PME Ack is not received on port: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_pme_turnoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_pme_turnoff(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.tegra_pcie_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %8 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %8, i32 0, i32 1
  %10 = load %struct.tegra_pcie*, %struct.tegra_pcie** %9, align 8
  store %struct.tegra_pcie* %10, %struct.tegra_pcie** %3, align 8
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 2
  %13 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %12, align 8
  store %struct.tegra_pcie_soc* %13, %struct.tegra_pcie_soc** %4, align 8
  %14 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %15 = load i64, i64* @AFI_PCIE_PME, align 8
  %16 = call i32 @afi_readl(%struct.tegra_pcie* %14, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* @AFI_PCIE_PME, align 8
  %33 = call i32 @afi_writel(%struct.tegra_pcie* %30, i32 %31, i64 %32)
  %34 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AFI_PCIE_PME, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = load i32, i32* @PME_ACK_TIMEOUT, align 4
  %55 = call i32 @readl_poll_timeout(i64 %48, i32 %49, i32 %53, i32 1, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %1
  %59 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %58, %1
  %67 = call i32 @usleep_range(i32 10000, i32 11000)
  %68 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %69 = load i64, i64* @AFI_PCIE_PME, align 8
  %70 = call i32 @afi_readl(%struct.tegra_pcie* %68, i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %75 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* @AFI_PCIE_PME, align 8
  %88 = call i32 @afi_writel(%struct.tegra_pcie* %85, i32 %86, i64 %87)
  ret void
}

declare dso_local i32 @afi_readl(%struct.tegra_pcie*, i64) #1

declare dso_local i32 @afi_writel(%struct.tegra_pcie*, i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
