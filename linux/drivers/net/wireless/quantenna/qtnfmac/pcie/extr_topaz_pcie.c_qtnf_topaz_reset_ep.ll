; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_reset_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_topaz_reset_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TOPAZ_RC_RST_EP_IRQ = common dso_local global i32 0, align 4
@QTN_EP_RESET_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_pcie_topaz_state*)* @qtnf_topaz_reset_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_topaz_reset_ep(%struct.qtnf_pcie_topaz_state* %0) #0 {
  %2 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %2, align 8
  %3 = load i32, i32* @TOPAZ_RC_RST_EP_IRQ, align 4
  %4 = call i32 @TOPAZ_IPC_IRQ_WORD(i32 %3)
  %5 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %6 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @TOPAZ_LH_IPC4_INT(i32 %8)
  %10 = call i32 @writel(i32 %4, i32 %9)
  %11 = load i32, i32* @QTN_EP_RESET_WAIT_MS, align 4
  %12 = call i32 @msleep(i32 %11)
  %13 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %2, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_restore_state(i32 %16)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @TOPAZ_IPC_IRQ_WORD(i32) #1

declare dso_local i32 @TOPAZ_LH_IPC4_INT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
