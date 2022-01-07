; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_guest_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_guest_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.xen_pcibk_dev_data = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [63 x i8] c"%s IRQ line is not shared with other domains. Turning ISR off\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xen_pcibk_guest_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_guest_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.xen_pcibk_dev_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pci_dev*
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = call %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.xen_pcibk_dev_data* %11, %struct.xen_pcibk_dev_data** %7, align 8
  %12 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %13 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %18 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %23 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %27 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %28, 1000
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @xen_test_irq_shared(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %37 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %7, align 8
  %41 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %16, %2
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @xen_test_irq_shared(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
