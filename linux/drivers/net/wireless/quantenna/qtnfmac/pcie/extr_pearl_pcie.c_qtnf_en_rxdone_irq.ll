; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_en_rxdone_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_en_rxdone_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { i32, i32, i32 }

@PCIE_HDP_INT_RX_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_pearl_state*)* @qtnf_en_rxdone_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_en_rxdone_irq(%struct.qtnf_pcie_pearl_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %3 = alloca i64, align 8
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %2, align 8
  %4 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %5 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @PCIE_HDP_INT_RX_BITS, align 4
  %9 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %10 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %17 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PCIE_HDP_INT_EN(i32 %18)
  %20 = call i32 @writel(i32 %15, i32 %19)
  %21 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %2, align 8
  %22 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PCIE_HDP_INT_EN(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
