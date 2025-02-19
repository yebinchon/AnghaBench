; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_rx_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_rx_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { %struct.qtnf_pearl_rx_bd*, %struct.TYPE_2__ }
%struct.qtnf_pearl_rx_bd = type { i32 }
%struct.TYPE_2__ = type { i64 }

@QTN_TXDONE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*)* @qtnf_rx_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_rx_data_ready(%struct.qtnf_pcie_pearl_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qtnf_pearl_rx_bd*, align 8
  %6 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %3, align 8
  %7 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %8 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %12 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %11, i32 0, i32 0
  %13 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %13, i64 %14
  store %struct.qtnf_pearl_rx_bd* %15, %struct.qtnf_pearl_rx_bd** %5, align 8
  %16 = load %struct.qtnf_pearl_rx_bd*, %struct.qtnf_pearl_rx_bd** %5, align 8
  %17 = getelementptr inbounds %struct.qtnf_pearl_rx_bd, %struct.qtnf_pearl_rx_bd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @QTN_TXDONE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
