; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_amd5536udc_pci.c_udc_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_amd5536udc_pci.c_udc_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.udc = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@udc = common dso_local global %struct.TYPE_4__* null, align 8
@UDC_DEVCFG_SOFTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @udc_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.udc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.udc* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.udc* %5, %struct.udc** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @usb_del_gadget_udc(i32* %7)
  %9 = load %struct.udc*, %struct.udc** %3, align 8
  %10 = getelementptr inbounds %struct.udc, %struct.udc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.udc*, %struct.udc** %3, align 8
  %17 = call i32 @free_dma_pools(%struct.udc* %16)
  %18 = load i32, i32* @UDC_DEVCFG_SOFTRESET, align 4
  %19 = call i32 @AMD_BIT(i32 %18)
  %20 = load %struct.udc*, %struct.udc** %3, align 8
  %21 = getelementptr inbounds %struct.udc, %struct.udc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @writel(i32 %19, i32* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.udc*, %struct.udc** %3, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.udc* %28)
  %30 = load %struct.udc*, %struct.udc** %3, align 8
  %31 = getelementptr inbounds %struct.udc, %struct.udc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 @pci_resource_start(%struct.pci_dev* %34, i32 0)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_resource_len(%struct.pci_dev* %36, i32 0)
  %38 = call i32 @release_mem_region(i32 %35, i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  %41 = load %struct.udc*, %struct.udc** %3, align 8
  %42 = call i32 @udc_remove(%struct.udc* %41)
  br label %43

43:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.udc* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @free_dma_pools(%struct.udc*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @free_irq(i32, %struct.udc*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @udc_remove(%struct.udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
