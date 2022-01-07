; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_ist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_ist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@RERUN_ISR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_ABP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Slot(%s): Attention button pressed\0A\00", align 1
@PCI_EXP_SLTSTA_PFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Slot(%s): Power fault\0A\00", align 1
@PCI_EXP_SLTCTL_PWR_IND_OFF = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_ATTN_IND_ON = common dso_local global i32 0, align 4
@DISABLE_SLOT = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pciehp_ist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_ist(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.controller*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.controller*
  store %struct.controller* %11, %struct.controller** %6, align 8
  %12 = load %struct.controller*, %struct.controller** %6, align 8
  %13 = call %struct.pci_dev* @ctrl_dev(%struct.controller* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = call i32 @pci_config_pm_runtime_get(%struct.pci_dev* %14)
  %16 = load i32, i32* @RERUN_ISR, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.controller*, %struct.controller** %6, align 8
  %19 = getelementptr inbounds %struct.controller, %struct.controller* %18, i32 0, i32 3
  %20 = call i32 @atomic_fetch_and(i32 %17, i32* %19)
  %21 = load i32, i32* @RERUN_ISR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @pciehp_isr(i32 %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @enable_irq(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %116

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @synchronize_hardirq(i32 %39)
  %41 = load %struct.controller*, %struct.controller** %6, align 8
  %42 = getelementptr inbounds %struct.controller, %struct.controller* %41, i32 0, i32 3
  %43 = call i32 @atomic_xchg(i32* %42, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %47)
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %116

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PCI_EXP_SLTSTA_ABP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.controller*, %struct.controller** %6, align 8
  %57 = load %struct.controller*, %struct.controller** %6, align 8
  %58 = call i32 @slot_name(%struct.controller* %57)
  %59 = call i32 @ctrl_info(%struct.controller* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.controller*, %struct.controller** %6, align 8
  %61 = call i32 @pciehp_handle_button_press(%struct.controller* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @PCI_EXP_SLTSTA_PFD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.controller*, %struct.controller** %6, align 8
  %69 = getelementptr inbounds %struct.controller, %struct.controller* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.controller*, %struct.controller** %6, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.controller*, %struct.controller** %6, align 8
  %76 = load %struct.controller*, %struct.controller** %6, align 8
  %77 = call i32 @slot_name(%struct.controller* %76)
  %78 = call i32 @ctrl_err(%struct.controller* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.controller*, %struct.controller** %6, align 8
  %80 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_OFF, align 4
  %81 = load i32, i32* @PCI_EXP_SLTCTL_ATTN_IND_ON, align 4
  %82 = call i32 @pciehp_set_indicators(%struct.controller* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %67, %62
  %84 = load %struct.controller*, %struct.controller** %6, align 8
  %85 = getelementptr inbounds %struct.controller, %struct.controller* %84, i32 0, i32 2
  %86 = call i32 @down_read(i32* %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @DISABLE_SLOT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.controller*, %struct.controller** %6, align 8
  %93 = call i32 @pciehp_handle_disable_request(%struct.controller* %92)
  br label %106

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %97 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.controller*, %struct.controller** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @pciehp_handle_presence_or_link_change(%struct.controller* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.controller*, %struct.controller** %6, align 8
  %108 = getelementptr inbounds %struct.controller, %struct.controller* %107, i32 0, i32 2
  %109 = call i32 @up_read(i32* %108)
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %110)
  %112 = load %struct.controller*, %struct.controller** %6, align 8
  %113 = getelementptr inbounds %struct.controller, %struct.controller* %112, i32 0, i32 1
  %114 = call i32 @wake_up(i32* %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %106, %46, %33
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.pci_dev* @ctrl_dev(%struct.controller*) #1

declare dso_local i32 @pci_config_pm_runtime_get(%struct.pci_dev*) #1

declare dso_local i32 @atomic_fetch_and(i32, i32*) #1

declare dso_local i32 @pciehp_isr(i32, i8*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pci_config_pm_runtime_put(%struct.pci_dev*) #1

declare dso_local i32 @synchronize_hardirq(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i32 @pciehp_handle_button_press(%struct.controller*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #1

declare dso_local i32 @pciehp_set_indicators(%struct.controller*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @pciehp_handle_disable_request(%struct.controller*) #1

declare dso_local i32 @pciehp_handle_presence_or_link_change(%struct.controller*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
