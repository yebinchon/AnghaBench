; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_tx_queue_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_tx_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_topaz_state = type { %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_topaz_state*)* @qtnf_tx_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_tx_queue_ready(%struct.qtnf_pcie_topaz_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %4 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  store %struct.qtnf_pcie_topaz_state* %0, %struct.qtnf_pcie_topaz_state** %3, align 8
  %5 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %6 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %5, i32 0, i32 0
  store %struct.qtnf_pcie_bus_priv* %6, %struct.qtnf_pcie_bus_priv** %4, align 8
  %7 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %8 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CIRC_SPACE(i32 %9, i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %1
  %19 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %3, align 8
  %20 = call i32 @qtnf_topaz_data_tx_reclaim(%struct.qtnf_pcie_topaz_state* %19)
  %21 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %22 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %25 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CIRC_SPACE(i32 %23, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %34 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %39

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %1
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @qtnf_topaz_data_tx_reclaim(%struct.qtnf_pcie_topaz_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
