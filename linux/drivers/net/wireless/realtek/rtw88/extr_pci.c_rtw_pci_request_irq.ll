; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@rtw_disable_msi = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to alloc PCI irq vectors\0A\00", align 1
@rtw_pci_interrupt_handler = common dso_local global i32 0, align 4
@rtw_pci_interrupt_threadfn = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.pci_dev*)* @rtw_pci_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_request_irq(%struct.rtw_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @rtw_disable_msi, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @PCI_IRQ_MSI, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %16, i32 1, i32 1, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %23 = call i32 (%struct.rtw_dev*, i8*, ...) @rtw_err(%struct.rtw_dev* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %15
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @rtw_pci_interrupt_handler, align 4
  %33 = load i32, i32* @rtw_pci_interrupt_threadfn, align 4
  %34 = load i32, i32* @IRQF_SHARED, align 4
  %35 = load i32, i32* @KBUILD_MODNAME, align 4
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %37 = call i32 @devm_request_threaded_irq(i32 %28, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.rtw_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (%struct.rtw_dev*, i8*, ...) @rtw_err(%struct.rtw_dev* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %44)
  br label %46

46:                                               ; preds = %40, %25
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i32, %struct.rtw_dev*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
