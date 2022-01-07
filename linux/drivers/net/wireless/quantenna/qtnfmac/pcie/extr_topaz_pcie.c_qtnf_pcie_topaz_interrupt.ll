; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_pcie_topaz_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_pcie_topaz_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_topaz_state = type { %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qtnf_pcie_topaz_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_topaz_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qtnf_bus*, align 8
  %7 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %8 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qtnf_bus*
  store %struct.qtnf_bus* %10, %struct.qtnf_bus** %6, align 8
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %12 = call i64 @get_bus_priv(%struct.qtnf_bus* %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.qtnf_pcie_topaz_state*
  store %struct.qtnf_pcie_topaz_state* %14, %struct.qtnf_pcie_topaz_state** %7, align 8
  %15 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %7, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %15, i32 0, i32 0
  store %struct.qtnf_pcie_bus_priv* %16, %struct.qtnf_pcie_bus_priv** %8, align 8
  %17 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %7, align 8
  %23 = call i32 @qtnf_topaz_intx_asserted(%struct.qtnf_pcie_topaz_state* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %21, %2
  %28 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %29 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %7, align 8
  %34 = call i32 @qtnf_deassert_intx(%struct.qtnf_pcie_topaz_state* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %37 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %41 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %40, i32 0, i32 2
  %42 = call i32 @qtnf_shm_ipc_irq_handler(i32* %41)
  %43 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %44 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %43, i32 0, i32 1
  %45 = call i32 @qtnf_shm_ipc_irq_handler(i32* %44)
  %46 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %47 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %46, i32 0, i32 0
  %48 = call i64 @napi_schedule_prep(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %7, align 8
  %52 = call i32 @disable_rx_irqs(%struct.qtnf_pcie_topaz_state* %51)
  %53 = load %struct.qtnf_bus*, %struct.qtnf_bus** %6, align 8
  %54 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %53, i32 0, i32 0
  %55 = call i32 @__napi_schedule(i32* %54)
  br label %56

56:                                               ; preds = %50, %35
  %57 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %8, align 8
  %58 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %57, i32 0, i32 0
  %59 = call i32 @tasklet_hi_schedule(i32* %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_topaz_intx_asserted(%struct.qtnf_pcie_topaz_state*) #1

declare dso_local i32 @qtnf_deassert_intx(%struct.qtnf_pcie_topaz_state*) #1

declare dso_local i32 @qtnf_shm_ipc_irq_handler(i32*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @disable_rx_irqs(%struct.qtnf_pcie_topaz_state*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
