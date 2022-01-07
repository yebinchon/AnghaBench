; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_pcie_topaz_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_pcie_topaz_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32, i32, i32, i32* }
%struct.qtnf_pcie_topaz_state = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.qtnf_shm_ipc_int = type { %struct.qtnf_pcie_topaz_state*, i32 }

@qtnf_pcie_topaz_bus_ops = common dso_local global i32 0, align 4
@qtnf_topaz_fw_work_handler = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@qtnf_pcie_topaz_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"qtnf_topaz_irq\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to request pcie irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to init card\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"PCIE xfer init failed\0A\00", align 1
@qtnf_reclaim_tasklet_fn = common dso_local global i32 0, align 4
@qtnf_topaz_rx_poll = common dso_local global i32 0, align 4
@qtnf_topaz_ipc_gen_ep_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, i32)* @qtnf_pcie_topaz_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_pcie_topaz_probe(%struct.qtnf_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.qtnf_shm_ipc_int, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %12 = call %struct.qtnf_pcie_topaz_state* @get_bus_priv(%struct.qtnf_bus* %11)
  store %struct.qtnf_pcie_topaz_state* %12, %struct.qtnf_pcie_topaz_state** %6, align 8
  %13 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %14 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %17, i32 0, i32 3
  store i32* @qtnf_pcie_topaz_bus_ops, i32** %18, align 8
  %19 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %20 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %19, i32 0, i32 2
  %21 = load i32, i32* @qtnf_topaz_fw_work_handler, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %24 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %27, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %30 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @IRQF_NOBALANCING, align 8
  store i64 %35, i64* %9, align 8
  br label %40

36:                                               ; preds = %2
  %37 = load i64, i64* @IRQF_NOBALANCING, align 8
  %38 = load i64, i64* @IRQF_SHARED, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %48 = bitcast %struct.qtnf_bus* %47 to i8*
  %49 = call i32 @devm_request_irq(i32* %42, i32 %45, i32* @qtnf_pcie_topaz_interrupt, i64 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %108

58:                                               ; preds = %40
  %59 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @disable_irq(i32 %61)
  %63 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %64 = call i32 @qtnf_pre_init_ep(%struct.qtnf_bus* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %58
  %71 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @qtnf_pcie_topaz_init_xfer(%struct.qtnf_pcie_topaz_state* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %108

79:                                               ; preds = %70
  %80 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %81 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* @qtnf_reclaim_tasklet_fn, align 4
  %84 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %85 = ptrtoint %struct.qtnf_pcie_topaz_state* %84 to i64
  %86 = call i32 @tasklet_init(i32* %82, i32 %83, i64 %85)
  %87 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %88 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %87, i32 0, i32 1
  %89 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %90 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %89, i32 0, i32 0
  %91 = load i32, i32* @qtnf_topaz_rx_poll, align 4
  %92 = call i32 @netif_napi_add(i32* %88, i32* %90, i32 %91, i32 10)
  %93 = load i32, i32* @qtnf_topaz_ipc_gen_ep_int, align 4
  %94 = getelementptr inbounds %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_int* %8, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  %95 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %96 = getelementptr inbounds %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_int* %8, i32 0, i32 0
  store %struct.qtnf_pcie_topaz_state* %95, %struct.qtnf_pcie_topaz_state** %96, align 8
  %97 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %98 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %97, i32 0, i32 1
  %99 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %100 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %104 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @qtnf_pcie_init_shm_ipc(%struct.TYPE_4__* %98, i32* %102, i32* %106, %struct.qtnf_shm_ipc_int* %8)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %79, %76, %67, %52
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.qtnf_pcie_topaz_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i64, i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @qtnf_pre_init_ep(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_pcie_topaz_init_xfer(%struct.qtnf_pcie_topaz_state*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @netif_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @qtnf_pcie_init_shm_ipc(%struct.TYPE_4__*, i32*, i32*, %struct.qtnf_shm_ipc_int*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
