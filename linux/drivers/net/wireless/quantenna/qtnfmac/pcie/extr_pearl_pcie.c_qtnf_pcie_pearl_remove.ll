; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_pearl_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*)* @qtnf_pcie_pearl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_pcie_pearl_remove(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  %3 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %4 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %5 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %4)
  store %struct.qtnf_pcie_pearl_state* %5, %struct.qtnf_pcie_pearl_state** %3, align 8
  %6 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %7 = call i32 @qtnf_pearl_reset_ep(%struct.qtnf_pcie_pearl_state* %6)
  %8 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %9 = call i32 @qtnf_pearl_free_xfer_buffers(%struct.qtnf_pcie_pearl_state* %8)
  ret void
}

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_pearl_reset_ep(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @qtnf_pearl_free_xfer_buffers(%struct.qtnf_pcie_pearl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
