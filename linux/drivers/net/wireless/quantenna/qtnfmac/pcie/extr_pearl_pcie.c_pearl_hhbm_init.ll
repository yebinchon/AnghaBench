; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_hhbm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_hhbm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HHBM_CONFIG_SOFT_RESET = common dso_local global i32 0, align 4
@HHBM_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*)* @pearl_hhbm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pearl_hhbm_init(%struct.qtnf_pcie_pearl_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %3 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %2, align 8
  %4 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %5 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PCIE_HHBM_CONFIG(i32 %6)
  %8 = call i32 @readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HHBM_CONFIG_SOFT_RESET, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PCIE_HHBM_CONFIG(i32 %15)
  %17 = call i32 @writel(i32 %12, i32 %16)
  %18 = call i32 @usleep_range(i32 50, i32 100)
  %19 = load i32, i32* @HHBM_CONFIG_SOFT_RESET, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %25 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PCIE_HHBM_CONFIG(i32 %26)
  %28 = call i32 @writel(i32 %23, i32 %27)
  %29 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %30 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %34 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PCIE_HHBM_Q_LIMIT_REG(i32 %35)
  %37 = call i32 @writel(i32 %32, i32 %36)
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PCIE_HHBM_CONFIG(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @PCIE_HHBM_Q_LIMIT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
