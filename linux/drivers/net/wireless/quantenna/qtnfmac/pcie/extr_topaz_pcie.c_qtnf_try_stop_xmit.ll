; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_try_stop_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_try_stop_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.net_device = type { i32 }
%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TOPAZ_RC_TX_STOP_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*, %struct.net_device*)* @qtnf_try_stop_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_try_stop_xmit(%struct.qtnf_bus* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %7 = call i64 @get_bus_priv(%struct.qtnf_bus* %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.qtnf_pcie_topaz_state*
  store %struct.qtnf_pcie_topaz_state* %9, %struct.qtnf_pcie_topaz_state** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %13)
  %15 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %20 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 0, i32 %21)
  %23 = call i32 (...) @dma_wmb()
  %24 = load i32, i32* @TOPAZ_RC_TX_STOP_IRQ, align 4
  %25 = call i32 @TOPAZ_IPC_IRQ_WORD(i32 %24)
  %26 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %27 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TOPAZ_LH_IPC4_INT(i32 %29)
  %31 = call i32 @writel(i32 %25, i32 %30)
  %32 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %5, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @tasklet_hi_schedule(i32* %34)
  ret void
}

declare dso_local i64 @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @TOPAZ_IPC_IRQ_WORD(i32) #1

declare dso_local i32 @TOPAZ_LH_IPC4_INT(i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
