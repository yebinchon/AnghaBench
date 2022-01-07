; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.pcie_device* }
%struct.pcie_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i64, %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_AIP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_PIP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_NCCS = common dso_local global i32 0, align 4
@pciehp_queue_pushbutton_work = common dso_local global i32 0, align 4
@pci_bus_sem = common dso_local global i32 0, align 4
@OFF_STATE = common dso_local global i32 0, align 4
@ON_STATE = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_ABP = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PFD = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_MRLSC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_CC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Slot #%d AttnBtn%c PwrCtrl%c MRL%c AttnInd%c PwrInd%c HotPlug%c Surprise%c Interlock%c NoCompl%c LLActRep%c%s\0A\00", align 1
@PCI_EXP_SLTCAP_PSN = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_ABP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_PCP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_MRLSP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_HPC = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_HPS = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_EIP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_DLLLARC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c" (with Cmd Compl erratum)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.controller* @pcie_init(%struct.pcie_device* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %10 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 3
  %15 = load %struct.pci_bus*, %struct.pci_bus** %14, align 8
  store %struct.pci_bus* %15, %struct.pci_bus** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.controller* @kzalloc(i32 40, i32 %16)
  store %struct.controller* %17, %struct.controller** %4, align 8
  %18 = load %struct.controller*, %struct.controller** %4, align 8
  %19 = icmp ne %struct.controller* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.controller* null, %struct.controller** %2, align 8
  br label %166

21:                                               ; preds = %1
  %22 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %23 = load %struct.controller*, %struct.controller** %4, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 8
  store %struct.pcie_device* %22, %struct.pcie_device** %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = load i32, i32* @PCI_EXP_SLTCAP, align 4
  %27 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %25, i32 %26, i32* %5)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* @PCI_EXP_SLTCAP_AIP, align 4
  %34 = load i32, i32* @PCI_EXP_SLTCAP_PIP, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %21
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @PCI_EXP_SLTCAP_NCCS, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.controller*, %struct.controller** %4, align 8
  %51 = getelementptr inbounds %struct.controller, %struct.controller* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.controller*, %struct.controller** %4, align 8
  %53 = getelementptr inbounds %struct.controller, %struct.controller* %52, i32 0, i32 7
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.controller*, %struct.controller** %4, align 8
  %56 = getelementptr inbounds %struct.controller, %struct.controller* %55, i32 0, i32 6
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.controller*, %struct.controller** %4, align 8
  %59 = getelementptr inbounds %struct.controller, %struct.controller* %58, i32 0, i32 5
  %60 = call i32 @init_rwsem(i32* %59)
  %61 = load %struct.controller*, %struct.controller** %4, align 8
  %62 = getelementptr inbounds %struct.controller, %struct.controller* %61, i32 0, i32 4
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.controller*, %struct.controller** %4, align 8
  %65 = getelementptr inbounds %struct.controller, %struct.controller* %64, i32 0, i32 3
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.controller*, %struct.controller** %4, align 8
  %68 = getelementptr inbounds %struct.controller, %struct.controller* %67, i32 0, i32 2
  %69 = load i32, i32* @pciehp_queue_pushbutton_work, align 4
  %70 = call i32 @INIT_DELAYED_WORK(i32* %68, i32 %69)
  %71 = load %struct.controller*, %struct.controller** %4, align 8
  %72 = call i32 @dbg_ctrl(%struct.controller* %71)
  %73 = call i32 @down_read(i32* @pci_bus_sem)
  %74 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %75 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %74, i32 0, i32 0
  %76 = call i64 @list_empty(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %48
  %79 = load i32, i32* @OFF_STATE, align 4
  br label %82

80:                                               ; preds = %48
  %81 = load i32, i32* @ON_STATE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.controller*, %struct.controller** %4, align 8
  %85 = getelementptr inbounds %struct.controller, %struct.controller* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = call i32 @up_read(i32* @pci_bus_sem)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %88 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %89 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %87, i32 %88, i32* %6)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %91 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %92 = load i32, i32* @PCI_EXP_SLTSTA_ABP, align 4
  %93 = load i32, i32* @PCI_EXP_SLTSTA_PFD, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PCI_EXP_SLTSTA_MRLSC, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PCI_EXP_SLTSTA_CC, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @pcie_capability_write_word(%struct.pci_dev* %90, i32 %91, i32 %102)
  %104 = load %struct.controller*, %struct.controller** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @PCI_EXP_SLTCAP_PSN, align 4
  %107 = and i32 %105, %106
  %108 = ashr i32 %107, 19
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @PCI_EXP_SLTCAP_ABP, align 4
  %111 = call i32 @FLAG(i32 %109, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @PCI_EXP_SLTCAP_PCP, align 4
  %114 = call i32 @FLAG(i32 %112, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @PCI_EXP_SLTCAP_MRLSP, align 4
  %117 = call i32 @FLAG(i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @PCI_EXP_SLTCAP_AIP, align 4
  %120 = call i32 @FLAG(i32 %118, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @PCI_EXP_SLTCAP_PIP, align 4
  %123 = call i32 @FLAG(i32 %121, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @PCI_EXP_SLTCAP_HPC, align 4
  %126 = call i32 @FLAG(i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @PCI_EXP_SLTCAP_HPS, align 4
  %129 = call i32 @FLAG(i32 %127, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @PCI_EXP_SLTCAP_EIP, align 4
  %132 = call i32 @FLAG(i32 %130, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @PCI_EXP_SLTCAP_NCCS, align 4
  %135 = call i32 @FLAG(i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @PCI_EXP_LNKCAP_DLLLARC, align 4
  %138 = call i32 @FLAG(i32 %136, i32 %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %145 = call i32 @ctrl_info(%struct.controller* %104, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i8* %144)
  %146 = load %struct.controller*, %struct.controller** %4, align 8
  %147 = call i64 @POWER_CTRL(%struct.controller* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %82
  %150 = load %struct.controller*, %struct.controller** %4, align 8
  %151 = call i32 @pciehp_get_power_status(%struct.controller* %150, i64* %7)
  %152 = load %struct.controller*, %struct.controller** %4, align 8
  %153 = call i32 @pciehp_card_present_or_link_active(%struct.controller* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %149
  %156 = load i64, i64* %7, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.controller*, %struct.controller** %4, align 8
  %160 = call i32 @pcie_disable_notification(%struct.controller* %159)
  %161 = load %struct.controller*, %struct.controller** %4, align 8
  %162 = call i32 @pciehp_power_off_slot(%struct.controller* %161)
  br label %163

163:                                              ; preds = %158, %155, %149
  br label %164

164:                                              ; preds = %163, %82
  %165 = load %struct.controller*, %struct.controller** %4, align 8
  store %struct.controller* %165, %struct.controller** %2, align 8
  br label %166

166:                                              ; preds = %164, %20
  %167 = load %struct.controller*, %struct.controller** %2, align 8
  ret %struct.controller* %167
}

declare dso_local %struct.controller* @kzalloc(i32, i32) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dbg_ctrl(%struct.controller*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @FLAG(i32, i32) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_get_power_status(%struct.controller*, i64*) #1

declare dso_local i32 @pciehp_card_present_or_link_active(%struct.controller*) #1

declare dso_local i32 @pcie_disable_notification(%struct.controller*) #1

declare dso_local i32 @pciehp_power_off_slot(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
