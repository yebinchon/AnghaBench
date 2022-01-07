; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_pcie_pearl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32, i32, i32, i32* }
%struct.qtnf_shm_ipc_int = type { %struct.qtnf_pcie_pearl_state*, i32 }
%struct.qtnf_pcie_pearl_state = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@qtnf_pcie_pearl_bus_ops = common dso_local global i32 0, align 4
@qtnf_pearl_fw_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PCIE xfer init failed\0A\00", align 1
@qtnf_pcie_pearl_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"qtnf_pearl_irq\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to request pcie irq %d\0A\00", align 1
@qtnf_pearl_reclaim_tasklet_fn = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_rx_poll = common dso_local global i32 0, align 4
@qtnf_pcie_pearl_ipc_gen_ep_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, i32)* @qtnf_pcie_pearl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_pearl_probe(%struct.qtnf_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_shm_ipc_int, align 8
  %7 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %11 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %10)
  store %struct.qtnf_pcie_pearl_state* %11, %struct.qtnf_pcie_pearl_state** %7, align 8
  %12 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %13 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %17 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %16, i32 0, i32 3
  store i32* @qtnf_pcie_pearl_bus_ops, i32** %17, align 8
  %18 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %19 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %22 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %21, i32 0, i32 2
  %23 = load i32, i32* @qtnf_pearl_fw_work_handler, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %26 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %30 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %32 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %36 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %35, i32 0, i32 0
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %42 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = call i32 @writel(i32 %40, i32* %44)
  %46 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @qtnf_pcie_pearl_init_xfer(%struct.qtnf_pcie_pearl_state* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %106

54:                                               ; preds = %2
  %55 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %56 = call i32 @qtnf_init_hdp_irqs(%struct.qtnf_pcie_pearl_state* %55)
  %57 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %58 = call i32 @qtnf_disable_hdp_irqs(%struct.qtnf_pcie_pearl_state* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %65 = bitcast %struct.qtnf_bus* %64 to i8*
  %66 = call i32 @devm_request_irq(i32* %60, i32 %63, i32* @qtnf_pcie_pearl_interrupt, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %54
  %70 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %75 = call i32 @qtnf_pearl_free_xfer_buffers(%struct.qtnf_pcie_pearl_state* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %106

77:                                               ; preds = %54
  %78 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %79 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* @qtnf_pearl_reclaim_tasklet_fn, align 4
  %82 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %83 = ptrtoint %struct.qtnf_pcie_pearl_state* %82 to i64
  %84 = call i32 @tasklet_init(i32* %80, i32 %81, i64 %83)
  %85 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %86 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %85, i32 0, i32 1
  %87 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %88 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %87, i32 0, i32 0
  %89 = load i32, i32* @qtnf_pcie_pearl_rx_poll, align 4
  %90 = call i32 @netif_napi_add(i32* %86, i32* %88, i32 %89, i32 10)
  %91 = load i32, i32* @qtnf_pcie_pearl_ipc_gen_ep_int, align 4
  %92 = getelementptr inbounds %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_int* %6, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %94 = getelementptr inbounds %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_int* %6, i32 0, i32 0
  store %struct.qtnf_pcie_pearl_state* %93, %struct.qtnf_pcie_pearl_state** %94, align 8
  %95 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %96 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %95, i32 0, i32 1
  %97 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %98 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %7, align 8
  %102 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @qtnf_pcie_init_shm_ipc(%struct.TYPE_4__* %96, i32* %100, i32* %104, %struct.qtnf_shm_ipc_int* %6)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %77, %69, %51
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @qtnf_pcie_pearl_init_xfer(%struct.qtnf_pcie_pearl_state*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @qtnf_init_hdp_irqs(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @qtnf_disable_hdp_irqs(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @qtnf_pearl_free_xfer_buffers(%struct.qtnf_pcie_pearl_state*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @netif_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @qtnf_pcie_init_shm_ipc(%struct.TYPE_4__*, i32*, i32*, %struct.qtnf_shm_ipc_int*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
