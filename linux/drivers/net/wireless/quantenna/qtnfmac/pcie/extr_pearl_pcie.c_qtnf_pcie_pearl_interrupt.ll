; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_pearl_state = type { i32, i32, i32, i32, i32, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32 }

@PCIE_HDP_INT_RX_BITS = common dso_local global i32 0, align 4
@PCIE_HDP_INT_TX_BITS = common dso_local global i32 0, align 4
@PCIE_HDP_INT_HHBM_UF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qtnf_pcie_pearl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_pearl_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %7 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qtnf_bus*
  store %struct.qtnf_bus* %10, %struct.qtnf_bus** %5, align 8
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %12 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %11)
  store %struct.qtnf_pcie_pearl_state* %12, %struct.qtnf_pcie_pearl_state** %6, align 8
  %13 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %13, i32 0, i32 5
  store %struct.qtnf_pcie_bus_priv* %14, %struct.qtnf_pcie_bus_priv** %7, align 8
  %15 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %20 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCIE_HDP_INT_STATUS(i32 %21)
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %25 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %24, i32 0, i32 3
  %26 = call i32 @qtnf_shm_ipc_irq_handler(i32* %25)
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 2
  %29 = call i32 @qtnf_shm_ipc_irq_handler(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %32 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %90

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PCIE_HDP_INT_RX_BITS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %44 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PCIE_HDP_INT_TX_BITS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %54 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PCIE_HDP_INT_HHBM_UF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %64 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PCIE_HDP_INT_RX_BITS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %74 = call i32 @qtnf_dis_rxdone_irq(%struct.qtnf_pcie_pearl_state* %73)
  %75 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %76 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %75, i32 0, i32 0
  %77 = call i32 @napi_schedule(i32* %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PCIE_HDP_INT_TX_BITS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %85 = call i32 @qtnf_dis_txdone_irq(%struct.qtnf_pcie_pearl_state* %84)
  %86 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %87 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %86, i32 0, i32 1
  %88 = call i32 @tasklet_hi_schedule(i32* %87)
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %36
  %91 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %92 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PCIE_HDP_INT_STATUS(i32 %93)
  %95 = call i32 @qtnf_non_posted_write(i32 -1, i32 %94)
  %96 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %97 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %90
  %101 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %102 = call i32 @qtnf_deassert_intx(%struct.qtnf_pcie_pearl_state* %101)
  br label %103

103:                                              ; preds = %100, %90
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PCIE_HDP_INT_STATUS(i32) #1

declare dso_local i32 @qtnf_shm_ipc_irq_handler(i32*) #1

declare dso_local i32 @qtnf_dis_rxdone_irq(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @qtnf_dis_txdone_irq(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @qtnf_non_posted_write(i32, i32) #1

declare dso_local i32 @qtnf_deassert_intx(%struct.qtnf_pcie_pearl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
