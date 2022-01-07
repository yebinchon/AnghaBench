; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, %struct.device, %struct.pci_dev* }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.dpc_dev = type { i32, i32, i64, %struct.pcie_device* }

@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_DPC = common dso_local global i32 0, align 4
@dpc_irq = common dso_local global i32 0, align 4
@dpc_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcie-dpc\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"request IRQ%d failed: %d\0A\00", align 1
@PCI_EXP_DPC_CAP = common dso_local global i64 0, align 8
@PCI_EXP_DPC_CTL = common dso_local global i64 0, align 8
@PCI_EXP_DPC_CAP_RP_EXT = common dso_local global i32 0, align 4
@PCI_EXP_DPC_RP_PIO_LOG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"RP PIO log size %u is invalid\0A\00", align 1
@PCI_EXP_DPC_CTL_EN_FATAL = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CTL_INT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [110 x i8] c"error containment capabilities: Int Msg #%d, RPExt%c PoisonedTLP%c SwTrigger%c RP PIO Log %d, DL_ActiveErr%c\0A\00", align 1
@PCI_EXP_DPC_IRQ = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CAP_POISONED_TLP = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CAP_SW_TRIGGER = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CAP_DL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @dpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpc_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.dpc_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %10 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i64 @pcie_aer_get_firmware_first(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %149

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.dpc_dev* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.dpc_dev* %24, %struct.dpc_dev** %4, align 8
  %25 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %26 = icmp ne %struct.dpc_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %149

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* @PCI_EXT_CAP_ID_DPC, align 4
  %33 = call i64 @pci_find_ext_capability(%struct.pci_dev* %31, i32 %32)
  %34 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %35 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %37 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %38 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %37, i32 0, i32 3
  store %struct.pcie_device* %36, %struct.pcie_device** %38, align 8
  %39 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %40 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %41 = call i32 @set_service_data(%struct.pcie_device* %39, %struct.dpc_dev* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @dpc_irq, align 4
  %47 = load i32, i32* @dpc_handler, align 4
  %48 = load i32, i32* @IRQF_SHARED, align 4
  %49 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %50 = call i32 @devm_request_threaded_irq(%struct.device* %42, i32 %45, i32 %46, i32 %47, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.dpc_dev* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %30
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pci_warn(%struct.pci_dev* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %149

61:                                               ; preds = %30
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %64 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI_EXP_DPC_CAP, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @pci_read_config_word(%struct.pci_dev* %62, i64 %67, i32* %9)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %71 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PCI_EXP_DPC_CTL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @pci_read_config_word(%struct.pci_dev* %69, i64 %74, i32* %8)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @PCI_EXP_DPC_CAP_RP_EXT, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %80 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %82 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %61
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @PCI_EXP_DPC_RP_PIO_LOG_SIZE, align 4
  %88 = and i32 %86, %87
  %89 = ashr i32 %88, 8
  %90 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %91 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %93 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %98 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 9
  br i1 %100, label %101, label %109

101:                                              ; preds = %96, %85
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %104 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pci_err(%struct.pci_dev* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %108 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %96
  br label %110

110:                                              ; preds = %109, %61
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 65524
  %113 = load i32, i32* @PCI_EXP_DPC_CTL_EN_FATAL, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @PCI_EXP_DPC_CTL_INT_EN, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %118 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %119 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCI_EXP_DPC_CTL, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @pci_write_config_word(%struct.pci_dev* %117, i64 %122, i32 %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @PCI_EXP_DPC_IRQ, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @PCI_EXP_DPC_CAP_RP_EXT, align 4
  %131 = call i32 @FLAG(i32 %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @PCI_EXP_DPC_CAP_POISONED_TLP, align 4
  %134 = call i32 @FLAG(i32 %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @PCI_EXP_DPC_CAP_SW_TRIGGER, align 4
  %137 = call i32 @FLAG(i32 %135, i32 %136)
  %138 = load %struct.dpc_dev*, %struct.dpc_dev** %4, align 8
  %139 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @PCI_EXP_DPC_CAP_DL_ACTIVE, align 4
  %143 = call i32 @FLAG(i32 %141, i32 %142)
  %144 = call i32 @pci_info(%struct.pci_dev* %125, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %146 = load i32, i32* @PCI_EXT_CAP_ID_DPC, align 4
  %147 = call i32 @pci_add_ext_cap_save_buffer(%struct.pci_dev* %145, i32 %146, i32 4)
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %110, %53, %27, %18
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @pcie_aer_get_firmware_first(%struct.pci_dev*) #1

declare dso_local %struct.dpc_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.dpc_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.dpc_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FLAG(i32, i32) #1

declare dso_local i32 @pci_add_ext_cap_save_buffer(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
